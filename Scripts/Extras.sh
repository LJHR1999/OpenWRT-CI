#!/bin/bash

#增加主题
echo "CONFIG_PACKAGE_luci-theme-${{env.OWRT_THEME}}=y" >> .config
echo "CONFIG_PACKAGE_luci-app-${{env.OWRT_THEME}}-config=y" >> .config

#根据源码来修改
if [[ ${{env.OWRT_URL}} == *"immortalwrt"* ]] ; then
  #增加luci界面
  echo "CONFIG_PACKAGE_luci=y" >> .config
  echo "CONFIG_LUCI_LANG_zh_Hans=y" >> .config
fi
