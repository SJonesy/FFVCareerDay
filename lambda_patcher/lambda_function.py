import ips
import boto3
import time
import os

BUCKET_NAME = 'bigbridgecareerday'
RPGE_PATCH = 'vanilla/rpge.ips'
VANILLA_ROM = 'vanilla/ff5-j.smc'
LOCAL_PATCH = '/tmp/rpge.ips'
LOCAL_VANILLA = '/tmp/ff5-j.smc'
LOCAL_PATCHED_ROM = '/tmp/ff5-rpge.smc'
UPLOAD_PATCHED_ROM_KEY = str(time.time()) + '/ff5-rpge.smc'

def lambda_handler(event, context):
    client = boto3.client('s3')

    try:
        print("Downloading patch...")
        patch = client.download_file(BUCKET_NAME, RPGE_PATCH, LOCAL_PATCH)
        print("Patch downloaded")
    except Exception as e:
        print("Error downloading patch: ", end="")
        print(e)

    try:
        print("Downloading vanilla rom...")
        patch = client.download_file(BUCKET_NAME, VANILLA_ROM, LOCAL_VANILLA)
        print("Vanilla rom downloaded")
    except Exception as e:
        print("Error downloading vanilla rom: ", end="")
        print(e)

    try:
        print("Applying patch...")
        ips.applyPatch(LOCAL_VANILLA, LOCAL_PATCH, LOCAL_PATCHED_ROM)
        print("Patch applied")
    except Exception as e:
        print("Error applying patch: ", end="")
        print(e)

    try:
        print("Uploading patched rom...")
        client.upload_file(LOCAL_PATCHED_ROM, BUCKET_NAME, UPLOAD_PATCHED_ROM_KEY)
        print("Patched rom uploaded to:" + UPLOAD_PATCHED_ROM_KEY)
    except Exception as e:
        print("Error uploading patched rom: ", end="")
        print(e)

    try:
        print("Cleaning up files...")
        os.remove(LOCAL_PATCH)
        os.remove(LOCAL_VANILLA)
        os.remove(LOCAL_PATCHED_ROM)
        print("Files cleaned up")
    except Exception as e:
        print("Error cleaning up files: ", end="")
        print(e)

    return UPLOAD_PATCHED_ROM_KEY
