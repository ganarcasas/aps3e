.class Laenu/aps3e/FileChooser$FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/FileChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileAdapter"
.end annotation


# static fields
.field private static final comparator_:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final game_filter_:Ljava/io/FileFilter;

.field private static final ps3_firmware_filter_:Ljava/io/FileFilter;


# instance fields
.field private context_:Landroid/content/Context;

.field private fileList_:[Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Laenu/aps3e/FileChooser$FileAdapter$1;

    invoke-direct {v0}, Laenu/aps3e/FileChooser$FileAdapter$1;-><init>()V

    sput-object v0, Laenu/aps3e/FileChooser$FileAdapter;->game_filter_:Ljava/io/FileFilter;

    .line 180
    new-instance v0, Laenu/aps3e/FileChooser$FileAdapter$2;

    invoke-direct {v0}, Laenu/aps3e/FileChooser$FileAdapter$2;-><init>()V

    sput-object v0, Laenu/aps3e/FileChooser$FileAdapter;->ps3_firmware_filter_:Ljava/io/FileFilter;

    .line 193
    new-instance v0, Laenu/aps3e/FileChooser$FileAdapter$3;

    invoke-direct {v0}, Laenu/aps3e/FileChooser$FileAdapter$3;-><init>()V

    sput-object v0, Laenu/aps3e/FileChooser$FileAdapter;->comparator_:Ljava/util/Comparator;

    .line 203
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;I)V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 209
    iput-object p1, p0, Laenu/aps3e/FileChooser$FileAdapter;->context_:Landroid/content/Context;

    .line 211
    const/16 v0, 0x2712

    if-ne p3, v0, :cond_1

    .line 212
    sget-object v0, Laenu/aps3e/FileChooser$FileAdapter;->game_filter_:Ljava/io/FileFilter;

    invoke-direct {p0, p2, v0}, Laenu/aps3e/FileChooser$FileAdapter;->getFileList(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Laenu/aps3e/FileChooser$FileAdapter;->fileList_:[Ljava/io/File;

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const/16 v0, 0x2711

    if-ne p3, v0, :cond_0

    .line 215
    sget-object v0, Laenu/aps3e/FileChooser$FileAdapter;->ps3_firmware_filter_:Ljava/io/FileFilter;

    invoke-direct {p0, p2, v0}, Laenu/aps3e/FileChooser$FileAdapter;->getFileList(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Laenu/aps3e/FileChooser$FileAdapter;->fileList_:[Ljava/io/File;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;ILaenu/aps3e/FileChooser$FileAdapter;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1, p2, p3}, Laenu/aps3e/FileChooser$FileAdapter;-><init>(Landroid/content/Context;Ljava/io/File;I)V

    return-void
.end method

.method private getFileList(Ljava/io/File;Ljava/io/FileFilter;)[Ljava/io/File;
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 222
    sget-object v1, Laenu/aps3e/FileChooser$FileAdapter;->comparator_:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 224
    return-object v0
.end method

.method private getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Laenu/aps3e/FileChooser$FileAdapter;->context_:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Laenu/aps3e/FileChooser$FileAdapter;->fileList_:[Ljava/io/File;

    array-length v0, v0

    return v0
.end method

.method public getFile(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Laenu/aps3e/FileChooser$FileAdapter;->fileList_:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Laenu/aps3e/FileChooser$FileAdapter;->fileList_:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 243
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Laenu/aps3e/FileChooser$FileAdapter;->fileList_:[Ljava/io/File;

    aget-object v2, v0, p1

    .line 255
    if-nez p2, :cond_0

    .line 256
    invoke-direct {p0}, Laenu/aps3e/FileChooser$FileAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 260
    :cond_0
    const v0, 0x7f020007

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 263
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    const v1, 0x7f01001d

    .line 262
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    const v0, 0x7f020008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-object p2

    .line 265
    :cond_1
    const v1, 0x7f01001c

    goto :goto_0
.end method
