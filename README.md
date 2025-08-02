# Salesforce Experiments

Trying new things in Salesforce Developer Edition orgs.

```sh
https://orgfarm-02aa84d90d-dev-ed.develop.my.salesforce.com/
jordan.t.blakey712@agentforce.com

# Install CLI
# https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm
./install_sf_cli.sh # note autocomplete only works in bash

sf commands # list common commands with use cases

sf org login web
sf alias set dev=jordan.t.blakey712@agentforce.com
sf project generate --name orgfarm-02aa84d90d-dev-ed --template empty
cd orgfarm-02aa84d90d-dev-ed
sf config set target-org dev
sf lightning generate component --name serviceCloudSidebar --type lwc --output-dir force-app/main/default/lwc
sf project deploy preview --ignore-conflicts # this flag prevents error about source tracking.
sf project deploy validate --source-dir force-app/ # get the metadata flag value for next command like this
sf project deploy start --metadata LightningComponentBundle:serviceCloudSidebar
sf project deploy start --source-dir force-app/main/default/lwc/serviceCloudSidebar/ # alternatively, deploy by path
```

### Set up Prettier autoformatting for lwc templates

https://developer.salesforce.com/docs/platform/sfvscode-extensions/guide/prettier.html

### XML Metadata format for LightningComponentBundle type

https://developer.salesforce.com/docs/atlas.en-us.api_meta.meta/api_meta/meta_lightningcomponentbundle.htm

### Enable Debug Mode

https://developer.salesforce.com/docs/platform/lwc/guide/debug-mode-enable.html

```sh
# DevTools console filter list for LWC Debug Mode - very noisy by default, but useful for inspecting objects, cache busting, etc.
-O11Y -ltng -[ORCHESTRATION] -[Report -empApi -apple-mobile -ComponentProfiler -WARNING -enableReactiveCarousel
```

## Testing Components

https://developer.salesforce.com/docs/platform/lwc/guide/testing.html
