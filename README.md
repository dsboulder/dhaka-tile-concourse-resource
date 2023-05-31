# dhaka-tile-concourse-resource
An experimental concourse resource for reading tile builds created by the dhaka TAP supply chain

## Usage

### resource definition

```yaml
resource_types:
- name: dhaka-tile
  type: docker-image
  source:
    repository: dsboulder/dhaka-tile-resource
    # or via a harbox proxy like at vmware: repository: harbor-repo.vmware.com/dockerhub-proxy-cache/dsboulder/dhaka-tile-resource

resources:
- name: example-tile-build
  type: dhaka-tile
  source:
    namespace: NAMESPACE-ON-DHAKA-TAP-M
    workload: NAME-OF-TILE-WORKLOAD
    robotPassword: ((tanzu-dev-registry-dhaka-reader-password)) # write David Stevenson to get this readonly cred
```

### resource get
```yaml
- get: example-tile-build
  trigger: true
```