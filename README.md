### odin-vma

Binding for VulkanMemoryAllocator.

## Usage

```
vulkan_functions := vma.create_vulkan_functions();

create_info := vma.AllocatorCreateInfo {
	vulkanApiVersion = vulkan.API_VERSION_1_2,
	physicalDevice = physical_device,
	device = device,
	instance = instance,
	pVulkanFunctions = &vulkan_functions,
};

if vma.CreateAllocator(&create_info, &allocator) != .SUCCESS {
	log.error("Failed to CreateAllocator");
}

```

## Notes on Linux
On Linux build the library yourself. The helper script `setup.sh` is available. It is important to then build your Odin project with `-extra-linker-flags:-lstdc++` as VulkanMemoryAllocator is implemented in C++ using the C++ standard library which is not automatically linked.

## Introduction to vma
https://gpuopen-librariesandsdks.github.io/VulkanMemoryAllocator/html/quick_start.html#quick_start_initialization
