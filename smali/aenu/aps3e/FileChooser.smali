.class public Laenu/aps3e/FileChooser;
.super Landroid/app/Activity;
.source "FileChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laenu/aps3e/FileChooser$FileAdapter;
    }
.end annotation


# static fields
.field public static final REQUEST_INSTALL_FIRMWARE:I = 0x2711

.field public static final REQUEST_INSTALL_GAME:I = 0x2712


# instance fields
.field private currentDir:Ljava/io/File;

.field private final goto_parent_dir_l:Landroid/view/View$OnClickListener;

.field private final item_click_l:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const-string v0, "e"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Laenu/aps3e/FileChooser;->currentDir:Ljava/io/File;

    .line 63
    new-instance v0, Laenu/aps3e/FileChooser$1;

    invoke-direct {v0, p0}, Laenu/aps3e/FileChooser$1;-><init>(Laenu/aps3e/FileChooser;)V

    iput-object v0, p0, Laenu/aps3e/FileChooser;->goto_parent_dir_l:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Laenu/aps3e/FileChooser$2;

    invoke-direct {v0, p0}, Laenu/aps3e/FileChooser$2;-><init>(Laenu/aps3e/FileChooser;)V

    iput-object v0, p0, Laenu/aps3e/FileChooser;->item_click_l:Landroid/widget/AdapterView$OnItemClickListener;

    .line 54
    return-void
.end method

.method static synthetic access$0(Laenu/aps3e/FileChooser;)Ljava/io/File;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Laenu/aps3e/FileChooser;->currentDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1(Laenu/aps3e/FileChooser;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Laenu/aps3e/FileChooser;->changeDir(Ljava/io/File;)V

    return-void
.end method

.method private changeDir(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 152
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Laenu/aps3e/FileChooser;->currentDir:Ljava/io/File;

    .line 153
    :cond_0
    const v0, 0x7f020013

    invoke-virtual {p0, v0}, Laenu/aps3e/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Laenu/aps3e/FileChooser;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v0, 0x7f020014

    invoke-virtual {p0, v0}, Laenu/aps3e/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 157
    new-instance v1, Laenu/aps3e/FileChooser$FileAdapter;

    iget-object v2, p0, Laenu/aps3e/FileChooser;->currentDir:Ljava/io/File;

    invoke-virtual {p0}, Laenu/aps3e/FileChooser;->get_request_code()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Laenu/aps3e/FileChooser$FileAdapter;-><init>(Landroid/content/Context;Ljava/io/File;ILaenu/aps3e/FileChooser$FileAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    return-void
.end method


# virtual methods
.method get_request_code()I
    .locals 3

    .prologue
    .line 119
    invoke-virtual {p0}, Laenu/aps3e/FileChooser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "request_code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method get_request_title()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Laenu/aps3e/FileChooser;->get_request_code()I

    move-result v0

    .line 125
    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 126
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Laenu/aps3e/FileChooser;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 129
    :cond_0
    const/16 v1, 0x2712

    if-ne v0, v1, :cond_1

    .line 130
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Laenu/aps3e/FileChooser;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Laenu/aps3e/FileChooser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Laenu/aps3e/FileChooser;->get_request_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Laenu/aps3e/FileChooser;->setContentView(I)V

    .line 145
    const v0, 0x7f020011

    invoke-virtual {p0, v0}, Laenu/aps3e/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Laenu/aps3e/FileChooser;->goto_parent_dir_l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v0, 0x7f020014

    invoke-virtual {p0, v0}, Laenu/aps3e/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Laenu/aps3e/FileChooser;->item_click_l:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    iget-object v0, p0, Laenu/aps3e/FileChooser;->currentDir:Ljava/io/File;

    invoke-direct {p0, v0}, Laenu/aps3e/FileChooser;->changeDir(Ljava/io/File;)V

    .line 149
    return-void
.end method
