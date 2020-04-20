eks-kubectl
Access your EKS cluster via kubectl in a Github Action.

jobs:
  jobName:
    name: Update new image
    runs-on: ubuntu-latest
    steps:
      - name: Build and push CONTAINER_NAME
        uses: tuongaz/kubectl-eks-action@master
        with:
          aws_access_key_id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws_secret_access_key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws_region: ${{ secrets.AWS_REGION }}
          args: set image --record deployment/pod-name pod-name=NEW_IMAGE_URL