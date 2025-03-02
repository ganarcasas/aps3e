.class Laenu/aps3e/MainActivity$GameMetaInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GameMetaInfoAdapter"
.end annotation


# static fields
.field private static final filter_:Ljava/io/FileFilter;


# instance fields
.field private context_:Landroid/content/Context;

.field private fileList_:[Ljava/io/File;

.field private metas:[Laenu/aps3e/Emulator$MetaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 301
    new-instance v0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter$1;

    invoke-direct {v0}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter$1;-><init>()V

    sput-object v0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->filter_:Ljava/io/FileFilter;

    .line 321
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 367
    iput-object p1, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->context_:Landroid/content/Context;

    .line 368
    invoke-static {}, Laenu/aps3e/MainActivity;->access$0()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->getFileList(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->fileList_:[Ljava/io/File;

    .line 369
    iget-object v0, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->fileList_:[Ljava/io/File;

    invoke-direct {p0, v0}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->gen_metas([Ljava/io/File;)[Laenu/aps3e/Emulator$MetaInfo;

    move-result-object v0

    iput-object v0, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->metas:[Laenu/aps3e/Emulator$MetaInfo;

    .line 370
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Laenu/aps3e/MainActivity$GameMetaInfoAdapter;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static deleteDirectory(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 336
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_0

    .line 339
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 348
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 349
    return-void

    .line 339
    :cond_1
    aget-object v3, v1, v0

    .line 340
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    invoke-static {v3}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->deleteDirectory(Ljava/io/File;)V

    .line 339
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private gen_metas([Ljava/io/File;)[Laenu/aps3e/Emulator$MetaInfo;
    .locals 5

    .prologue
    .line 378
    array-length v0, p1

    new-array v1, v0, [Laenu/aps3e/Emulator$MetaInfo;

    .line 379
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->fileList_:[Ljava/io/File;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 386
    return-object v1

    .line 380
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->fileList_:[Ljava/io/File;

    aget-object v3, v3, v0

    const-string v4, "PARAM.SFO"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Laenu/aps3e/Emulator;->meta_info_from_psf(Ljava/lang/String;)Laenu/aps3e/Emulator$MetaInfo;

    move-result-object v2

    aput-object v2, v1, v0

    .line 382
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->fileList_:[Ljava/io/File;

    aget-object v3, v3, v0

    const-string v4, "ICON0.PNG"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 383
    aget-object v3, v1, v0

    invoke-static {v2}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->read_png(Ljava/io/File;)[B

    move-result-object v2

    iput-object v2, v3, Laenu/aps3e/Emulator$MetaInfo;->icon:[B

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getFileList(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->filter_:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 374
    return-object v0
.end method

.method private getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->context_:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static read_png(Ljava/io/File;)[B
    .locals 4

    .prologue
    .line 325
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 326
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    .line 327
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-object v0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 331
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public del(I)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->fileList_:[Ljava/io/File;

    aget-object v0, v0, p1

    .line 399
    invoke-static {v0}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->deleteDirectory(Ljava/io/File;)V

    .line 400
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->metas:[Laenu/aps3e/Emulator$MetaInfo;

    array-length v0, v0

    return v0
.end method

.method public getGameDir(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->fileList_:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 414
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMetaInfo(I)Laenu/aps3e/Emulator$MetaInfo;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->metas:[Laenu/aps3e/Emulator$MetaInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 424
    if-nez p2, :cond_0

    .line 425
    invoke-direct {p0}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 428
    :cond_0
    iget-object v0, p0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->metas:[Laenu/aps3e/Emulator$MetaInfo;

    aget-object v1, v0, p1

    .line 430
    const v0, 0x7f02000a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 431
    iget-object v2, v1, Laenu/aps3e/Emulator$MetaInfo;->icon:[B

    if-nez v2, :cond_1

    .line 432
    const v2, 0x7f010022

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    :goto_0
    const v0, 0x7f02000d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 437
    iget-object v2, v1, Laenu/aps3e/Emulator$MetaInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    const v0, 0x7f020010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 440
    iget-object v2, v1, Laenu/aps3e/Emulator$MetaInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    const v0, 0x7f02000f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 443
    iget-object v2, v1, Laenu/aps3e/Emulator$MetaInfo;->serial:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const v0, 0x7f020009

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 446
    iget-object v1, v1, Laenu/aps3e/Emulator$MetaInfo;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    return-object p2

    .line 434
    :cond_1
    iget-object v2, v1, Laenu/aps3e/Emulator$MetaInfo;->icon:[B

    const/4 v3, 0x0

    iget-object v4, v1, Laenu/aps3e/Emulator$MetaInfo;->icon:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
