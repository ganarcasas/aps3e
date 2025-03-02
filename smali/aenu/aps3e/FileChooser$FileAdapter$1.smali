.class Laenu/aps3e/FileChooser$FileAdapter$1;
.super Ljava/lang/Object;
.source "FileChooser.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/FileChooser$FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final suffix:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 165
    const-string v2, ".iso"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 166
    const-string v2, ".pkg"

    aput-object v2, v0, v1

    iput-object v0, p0, Laenu/aps3e/FileChooser$FileAdapter$1;->suffix:[Ljava/lang/String;

    .line 163
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 173
    iget-object v4, p0, Laenu/aps3e/FileChooser$FileAdapter$1;->suffix:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_2

    move v0, v1

    .line 176
    goto :goto_0

    .line 173
    :cond_2
    aget-object v6, v4, v2

    .line 174
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
