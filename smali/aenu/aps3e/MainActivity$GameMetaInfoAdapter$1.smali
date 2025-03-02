.class Laenu/aps3e/MainActivity$GameMetaInfoAdapter$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/MainActivity$GameMetaInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Ljava/io/File;

    const-string v2, "PARAM.SFO"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    :try_start_0
    sget-object v2, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Laenu/aps3e/Emulator;->meta_info_from_psf(Ljava/lang/String;)Laenu/aps3e/Emulator$MetaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    const/4 v0, 0x1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    goto :goto_0
.end method
