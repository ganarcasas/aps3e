.class public Laenu/aps3e/KeyMapConfig;
.super Ljava/lang/Object;
.source "KeyMapConfig.java"


# static fields
.field public static final DEFAULT_KEYMAPPERS:[I

.field public static final KEY_NAMEIDS:[I

.field public static final KEY_VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x19

    .line 8
    new-array v0, v3, [I

    const/4 v1, 0x0

    .line 9
    const/16 v2, 0x13

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 10
    const/16 v2, 0x14

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 11
    const/16 v2, 0x15

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 12
    const/16 v2, 0x16

    aput v2, v0, v1

    .line 8
    sput-object v0, Laenu/aps3e/KeyMapConfig;->DEFAULT_KEYMAPPERS:[I

    .line 18
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Laenu/aps3e/KeyMapConfig;->KEY_NAMEIDS:[I

    .line 51
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Laenu/aps3e/KeyMapConfig;->KEY_VALUES:[I

    .line 82
    return-void

    .line 18
    nop

    :array_0
    .array-data 4
        0x7f06000e
        0x7f060023
        0x7f060017
        0x7f06000d
        0x7f060020
        0x7f06000c
        0x7f06000b
        0x7f060022
        0x7f060013
        0x7f060015
        0x7f060014
        0x7f060012
        0x7f06001c
        0x7f06001e
        0x7f06001d
        0x7f06001b
        0x7f06000f
        0x7f060010
        0x7f060011
        0x7f060018
        0x7f060019
        0x7f06001a
        0x7f060021
        0x7f06001f
        0x7f060016
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x14
        0x12
        0x15
        0x13
        0x16
        0x17
        0x18
        0x19
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
