# kubectl for AWS EKS

Control your EKS cluster via `kubectl` in a Github Action

## Example

This GitHub Action requires AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and the AWS_REGION

```yaml
jobs:
  jobName:
    name: Deploy new release
    runs-on: ubuntu-latest
    steps:
      - name: Deploy new docker image
        uses: tuongaz/kubctl-eks-action
        with:
          aws_access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws_region: ${{ secrets.AWS_REGION }}
          args: set image --record deployment/pod-name pod-name=DOCKER_IMAGE_URL
```