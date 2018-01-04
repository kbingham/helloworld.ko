#include <linux/module.h>
#include <linux/kernel.h>

int __init helloworld_init(void)
{
	printk("Hello World !\n");

	return 0;
}

void __exit helloworld_exit(void)
{
	pr_info("Goodbye cruel world...\n");
}

module_init(helloworld_init);
module_exit(helloworld_exit);
MODULE_LICENSE("GPL");
