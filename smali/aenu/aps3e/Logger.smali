.class public Laenu/aps3e/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static proc_info()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 13
    return-void
.end method

.method public static start_record(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Laenu/aps3e/Logger$1;

    invoke-direct {v0, p0}, Laenu/aps3e/Logger$1;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0}, Laenu/aps3e/Logger$1;->start()V

    .line 38
    return-void
.end method
