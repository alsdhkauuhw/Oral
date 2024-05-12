const menu = {
    list() {
        return [
            {
                "backMenu": [
                    {
                        "child": [{
                            "buttons": [
                                "查看", "修改", "删除", "复查提醒", "就诊信息", "新增"
                            ],
                            "menu": "会员", "menuJump": "列表", "tableName": "huiyuan"
                        }],
                        "menu": "会员管理"
                    },
                    {
                        "child": [{
                            "buttons": [
                                "查看", "修改", "删除"], "menu": "病例就诊信息", "menuJump": "列表", "tableName": "binglijiuzhenxinxi"
                        }],
                        "menu": "病例就诊信息管理"
                    },
                    {
                        "child": [{
                            "buttons": ["新增", "查看", "修改", "删除", "查看评论"],
                            "menu": "牙齿保健产品",
                            "menuJump": "列表",
                            "tableName": "yachibaojianchanpin"
                        }],
                        "menu": "牙齿保健产品管理"
                    },
                    {
                        "child": [{
                            "buttons": ["查看", "修改", "删除"],
                            "menu": "复查提醒",
                            "menuJump": "列表",
                            "tableName": "fuchatixing"
                        }],
                        "menu": "复查提醒管理"
                    },
                    {
                        "child": [{
                            "buttons": ["查看", "修改", "删除", "审核"],
                            "menu": "预约挂号",
                            "menuJump": "列表",
                            "tableName": "yuyueguahao"
                        }],
                        "menu": "预约挂号管理"
                    },
                    {
                        "child": [{
                            "buttons": ["新增", "查看", "修改", "删除"],
                            "menu": "药品信息",
                            "menuJump": "列表",
                            "tableName": "yaopinxinxi"
                        }],
                        "menu": "药品信息管理"
                    },
                    {
                        "child": [{
                            "buttons": ["查看", "修改", "回复", "删除"],
                            "menu": "留言板管理", "tableName": "messages"
                        }],
                        "menu": "留言板管理"
                    },
                    {
                        "child": [
                            {
                                "buttons": ["新增", "查看", "修改", "删除"],
                                "menu": "轮播图管理", "tableName": "config"
                            },
                            {
                                "buttons": ["新增", "查看", "修改", "删除"],
                                "menu": "牙齿保护小知识",
                                "tableName": "news"
                            }
                        ],
                        "menu": "系统管理"
                    },
                    {
                        "child": [
                            {
                                "buttons": ["新增", "查看", "修改", "删除"],
                                "menu": "已发货订单", "tableName": "orders/已发货"
                            },
                            {
                                "buttons": ["新增", "查看", "修改", "删除"],
                                "menu": "未支付订单",
                                "tableName": "orders/未支付"
                            },
                            {
                                "buttons": ["新增", "查看", "修改", "删除"],
                                "menu": "已取消订单", "tableName": "orders/已取消"
                            },
                            {
                                "buttons": ["新增", "查看", "修改", "删除", "发货"],
                                "menu": "已支付订单", "tableName": "orders/已支付"
                            },
                            {
                                "buttons": ["新增", "查看", "修改", "删除"],
                                "menu": "已退款订单", "tableName": "orders/已退款"
                            },
                            {
                                "buttons": ["新增", "查看", "修改", "删除"],
                                "menu": "已完成订单", "tableName": "orders/已完成"
                            }
                        ],
                        "menu": "订单管理"
                    }
                ],
                "frontMenu": [
                    {
                        "child": [
                            {
                                "buttons": ["查看"],
                                "menu": "牙齿保健产品列表",
                                "menuJump": "列表",
                                "tableName": "yachibaojianchanpin"
                            }],
                        "menu": "牙齿保健产品模块"
                    }],
                "hasBackLogin": "是",
                "hasBackRegister": "否",
                "hasFrontLogin": "否",
                "hasFrontRegister": "否",
                "roleName": "管理员",
                "tableName": "users"
            },
            {
                "backMenu": [{
                    "child": [{
                        "buttons": ["查看", "删除"],
                        "menu": "病例就诊信息", "menuJump": "列表",
                        "tableName": "binglijiuzhenxinxi"
                    }],
                    "menu": "病例就诊信息管理"
                },
                {
                    "child": [
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "复查提醒",
                            "menuJump": "列表",
                            "tableName": "fuchatixing"
                        }
                    ], "menu": "复查提醒管理"
                },
                {
                    "child": [
                        {
                            "buttons": ["查看", "修改", "删除", "新增"],
                            "menu": "预约挂号", "menuJump": "列表", "tableName": "yuyueguahao"
                        }
                    ],
                    "menu": "预约挂号管理"
                },
                {
                    "child": [
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "我的收藏管理",
                            "tableName": "storeup"
                        }
                    ],
                    "menu": "我的收藏管理"
                },
                {
                    "child": [
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "已完成订单",
                            "tableName": "orders/已完成"
                        },
                        {
                            "buttons": ["查看", "确认收货", "删除"],
                            "menu": "已发货订单",
                            "tableName": "orders/已发货"
                        },
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "未支付订单",
                            "tableName": "orders/未支付"
                        },
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "已取消订单",
                            "tableName": "orders/已取消"
                        },
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "已支付订单",
                            "tableName": "orders/已支付"
                        },
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "已退款订单",
                            "tableName": "orders/已退款"
                        }
                    ],
                    "menu": "订单管理"
                }
                ],
                "frontMenu": [
                    {
                        "child": [
                            {
                                "buttons": ["查看"],
                                "menu": "牙齿保健产品列表",
                                "menuJump": "列表",
                                "tableName": "yachibaojianchanpin"
                            }],
                        "menu": "牙齿保健产品模块"
                    }
                ],
                "hasBackLogin": "是",
                "hasBackRegister": "否",
                "hasFrontLogin": "是",
                "hasFrontRegister": "是",
                "roleName": "会员",
                "tableName": "huiyuan",
            },
            /* ---------------------------------------------------------------------------------------- */
            {
                "backMenu": [{
                    "child": [{
                        "buttons": ["查看", "删除"],
                        "menu": "病例就诊信息", "menuJump": "列表",
                        "tableName": "binglijiuzhenxinxi"
                    }],
                    "menu": "病例就诊信息管理"
                },
                {
                    "child": [
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "复查提醒",
                            "menuJump": "列表",
                            "tableName": "fuchatixing"
                        }
                    ], "menu": "复查提醒管理"
                },
                {
                    "child": [
                        {
                            "buttons": ["查看", "修改", "删除", "新增"],
                            "menu": "预约挂号", "menuJump": "列表", "tableName": "yuyueguahao"
                        }
                    ],
                    "menu": "预约挂号管理"
                },
                {
                    "child": [
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "我的收藏管理",
                            "tableName": "storeup"
                        }
                    ],
                    "menu": "我的收藏管理"
                },
                {
                    "child": [
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "已完成订单",
                            "tableName": "orders/已完成"
                        },
                        {
                            "buttons": ["查看", "确认收货", "删除"],
                            "menu": "已发货订单",
                            "tableName": "orders/已发货"
                        },
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "未支付订单",
                            "tableName": "orders/未支付"
                        },
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "已取消订单",
                            "tableName": "orders/已取消"
                        },
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "已支付订单",
                            "tableName": "orders/已支付"
                        },
                        {
                            "buttons": ["查看", "删除"],
                            "menu": "已退款订单",
                            "tableName": "orders/已退款"
                        }
                    ],
                    "menu": "订单管理"
                }
                ],
                "frontMenu": [
                    {
                        "child": [
                            {
                                "buttons": ["查看"],
                                "menu": "牙齿保健产品列表",
                                "menuJump": "列表",
                                "tableName": "yachibaojianchanpin"
                            }],
                        "menu": "牙齿保健产品模块"
                    }
                ],
                "hasBackLogin": "是",
                "hasBackRegister": "否",
                "hasFrontLogin": "是",
                "hasFrontRegister": "是",
                "roleName": "医生",
                "tableName": "doctors",
            }
        ]
    }
}
export default menu;
