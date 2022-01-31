#!/bin/bash

git submodule init
git submodule update
cd VulkanMemoryAllocator/build
cmake .. -DVMA_DYNAMIC_VULKAN_FUNCTIONS=OFF -DVMA_STATIC_VULKAN_FUNCTIONS=OFF
make
cp src/libVulkanMemoryAllocator.a ../../external
