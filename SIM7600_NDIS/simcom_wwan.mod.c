#include <linux/module.h>
#define INCLUDE_VERMAGIC
#include <linux/build-salt.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x2e712c61, "module_layout" },
	{ 0xf0e88c82, "usbnet_disconnect" },
	{ 0x4e3709bf, "usbnet_probe" },
	{ 0x56c99a89, "usb_deregister" },
	{ 0x8a18114, "usb_register_driver" },
	{ 0x3ab0dec9, "skb_push" },
	{ 0xdc13b846, "__dev_kfree_skb_any" },
	{ 0xc871a257, "_dev_err" },
	{ 0x6cbeaea5, "skb_pull" },
	{ 0xd7e7f734, "usbnet_suspend" },
	{ 0x7931721c, "usbnet_resume" },
	{ 0xc80c7ff8, "usb_control_msg" },
	{ 0xc5850110, "printk" },
	{ 0x6d55e5dc, "_dev_info" },
	{ 0x1ce1b514, "usbnet_get_endpoints" },
	{ 0xb1ad28e0, "__gnu_mcount_nc" },
};

MODULE_INFO(depends, "");

MODULE_ALIAS("usb:v1E0Ep9025d*dc*dsc*dp*ic*isc*ip*in*");
MODULE_ALIAS("usb:v1E0Ep9001d*dc*dsc*dp*ic*isc*ip*in*");

MODULE_INFO(srcversion, "ACED7068FFE31726F8F05EE");
