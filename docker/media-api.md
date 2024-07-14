

## Start up

### Mandatory usage quota config

Fails hard with an S3 error if the usage quota config JSON file is not available.

`com.amazonaws.services.s3.model.AmazonS3Exception: The specified key does not exist. (Service: Amazon S3; Status Code: 404'

```
at lib.QuotaStore.fetchQuota(UsageStore.scala:207)
at lib.QuotaStore.update(UsageStore.scala:202)
at MediaApiComponents.<init>(MediaApiComponents.scala:25)
```

Needs at least an empty JSON array in a file in a bucket:

```
s3.config.bucket=
quota.store.key=
```


### Mandatory usage mail config

```
s3.usagemail.bucket=
```

Seems to be the backing bucket for usage store. Do not know what the email reference means though!
Media API seems like a read only user of this bucket.

