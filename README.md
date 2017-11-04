# Mobile Partner Optimizer for Windows #
Optimizes Mobile Partner for less resource usage

### Installation ###

* Run `install.bat` with administrator privileges

### Plugins ###

#### Defaults ####
Running the optimiser enables following optional plugins
* USSD

#### Enable/Disable Plugins ####
Plugins are loaded from references provided in `config/PluginsConfig.xml` as `item` elements.
The analogous UI components for plugins are referenced from `plugins/XFramePlugin/Config.xml`.

##### Enable #####
Add corresponding `item` elements to `config/PluginsConfig.xml` and `plugins/XFramePlugin/Config.xml`.

##### Disable #####
Comment/delete `item` element from `config/PluginsConfig.xml`. Optionally, remove any relative `item` elements from `plugins/XFramePlugin/Config.xml`.

### Compatibility ###
* [23.015.11.01.983](http://download-c1.huawei.com/download/downloadCenter?downloadId=55222&version=175478&siteCode=)
