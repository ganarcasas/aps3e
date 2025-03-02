.class public Laenu/aps3e/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laenu/aps3e/MainActivity$GameMetaInfoAdapter;
    }
.end annotation


# static fields
.field private static final GAME_DIR:Ljava/io/File;

.field private static final MENU_ITEM_DELETE:I = 0x1


# instance fields
.field adapter:Laenu/aps3e/MainActivity$GameMetaInfoAdapter;

.field private final item_click_l:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/aps3e/config/dev_hdd0/game"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Laenu/aps3e/MainActivity;->GAME_DIR:Ljava/io/File;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "e"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    new-instance v0, Laenu/aps3e/MainActivity$1;

    invoke-direct {v0, p0}, Laenu/aps3e/MainActivity$1;-><init>(Laenu/aps3e/MainActivity;)V

    iput-object v0, p0, Laenu/aps3e/MainActivity;->item_click_l:Landroid/widget/AdapterView$OnItemClickListener;

    .line 55
    return-void
.end method

.method static synthetic access$0()Ljava/io/File;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Laenu/aps3e/MainActivity;->GAME_DIR:Ljava/io/File;

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 254
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    .line 255
    const-string v2, "aps3e"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    .line 256
    const-string v3, "aps3e/config"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 257
    const-string v3, "aps3e/config/dev_flash"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 258
    const-string v3, "aps3e/config/dev_flash2"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 259
    const-string v3, "aps3e/config/dev_flash3"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 260
    const-string v3, "aps3e/config/dev_bdvd"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 261
    const-string v3, "aps3e/config/dev_hdd0"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 262
    const-string v3, "aps3e/config/dev_hdd1"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 263
    const-string v3, "aps3e/config/dev_hdd0/game"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 264
    const-string v3, "aps3e/config/Icons"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 265
    const-string v3, "aps3e/config/Icons/ui"

    aput-object v3, v1, v2

    .line 268
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 275
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "aps3e/config/Icons/ui"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    const-string v1, "Icons/ui"

    invoke-static {p0, v1, v0}, Laenu/aps3e/Application;->extractAssetsDir(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V

    .line 278
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "aps3e/.nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_1
    return-void

    .line 268
    :cond_1
    aget-object v3, v1, v0

    .line 269
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 271
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 268
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private refresh_game_list()V
    .locals 2

    .prologue
    .line 291
    sget-object v0, Laenu/aps3e/MainActivity;->GAME_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    sget-object v0, Laenu/aps3e/MainActivity;->GAME_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 294
    :cond_0
    new-instance v0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;-><init>(Landroid/content/Context;Laenu/aps3e/MainActivity$GameMetaInfoAdapter;)V

    iput-object v0, p0, Laenu/aps3e/MainActivity;->adapter:Laenu/aps3e/MainActivity$GameMetaInfoAdapter;

    .line 295
    const v0, 0x7f02000b

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 296
    iget-object v1, p0, Laenu/aps3e/MainActivity;->adapter:Laenu/aps3e/MainActivity$GameMetaInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    return-void
.end method

.method private request_perms()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    .line 84
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v3, v1

    .line 85
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v3, v0

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    array-length v5, v3

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_0

    .line 93
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 94
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 95
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    const/16 v1, 0x309

    invoke-virtual {p0, v2, v1}, Laenu/aps3e/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 99
    :goto_1
    return v0

    .line 89
    :cond_0
    aget-object v6, v3, v2

    .line 90
    invoke-virtual {p0, v6}, Laenu/aps3e/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 91
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 99
    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 228
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    invoke-static {p0, v0}, Laenu/aps3e/InstallFrimware;->start_install_firmware(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :pswitch_1
    const-string v1, ".iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    sget-object v1, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v1, v0}, Laenu/aps3e/Emulator;->meta_info_from_iso(Ljava/lang/String;)Laenu/aps3e/Emulator$MetaInfo;

    move-result-object v1

    .line 181
    iget-object v2, v1, Laenu/aps3e/Emulator$MetaInfo;->icon:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Laenu/aps3e/Emulator$MetaInfo;->serial:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 182
    iget-object v1, v1, Laenu/aps3e/Emulator$MetaInfo;->serial:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Laenu/aps3e/InstallGame;->install_iso(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    const-string v1, ".pkg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Laenu/aps3e/InstallGame;->install_pkg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 240
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 241
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 243
    :pswitch_0
    iget-object v1, p0, Laenu/aps3e/MainActivity;->adapter:Laenu/aps3e/MainActivity$GameMetaInfoAdapter;

    invoke-virtual {v1, v0}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->del(I)V

    .line 244
    invoke-direct {p0}, Laenu/aps3e/MainActivity;->refresh_game_list()V

    .line 245
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f02000b

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Laenu/aps3e/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f060027

    invoke-virtual {p0, v1}, Laenu/aps3e/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    const-string v0, "aps3e_java"

    const-string v1, "main"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->setContentView(I)V

    .line 115
    invoke-virtual {p0, v2}, Laenu/aps3e/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Laenu/aps3e/MainActivity;->item_click_l:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    invoke-virtual {p0, v2}, Laenu/aps3e/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f02000c

    invoke-virtual {p0, v1}, Laenu/aps3e/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 118
    invoke-virtual {p0, v2}, Laenu/aps3e/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 120
    invoke-direct {p0}, Laenu/aps3e/MainActivity;->request_perms()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Laenu/aps3e/MainActivity;->initialize()V

    .line 122
    invoke-direct {p0}, Laenu/aps3e/MainActivity;->refresh_game_list()V

    .line 124
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 233
    const/4 v0, 0x1

    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Laenu/aps3e/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 234
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 129
    invoke-virtual {p0}, Laenu/aps3e/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 219
    invoke-virtual {p0}, Laenu/aps3e/MainActivity;->finish()V

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 144
    :pswitch_0
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->request_file_select(I)V

    goto :goto_0

    .line 147
    :pswitch_1
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->request_file_select(I)V

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-direct {p0}, Laenu/aps3e/MainActivity;->refresh_game_list()V

    goto :goto_0

    .line 153
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Laenu/proptest/HelloJni;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Laenu/aps3e/UpdateLogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Laenu/aps3e/KeyMapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 162
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Laenu/aps3e/GratitudeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Laenu/aps3e/VirtualPadEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Laenu/aps3e/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x7f020015
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 203
    const/16 v0, 0x309

    if-ne p1, v0, :cond_0

    .line 204
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 210
    invoke-direct {p0}, Laenu/aps3e/MainActivity;->initialize()V

    .line 211
    invoke-direct {p0}, Laenu/aps3e/MainActivity;->refresh_game_list()V

    .line 213
    :cond_0
    :goto_1
    return-void

    .line 204
    :cond_1
    aget v2, p3, v0

    .line 205
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 206
    invoke-direct {p0}, Laenu/aps3e/MainActivity;->request_perms()Z

    goto :goto_1

    .line 204
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method request_file_select(I)V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Laenu/aps3e/FileChooser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    const-string v1, "request_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v0, p1}, Laenu/aps3e/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    return-void
.end method
