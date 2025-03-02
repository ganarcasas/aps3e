.class public Laenu/aps3e/EmulatorActivity;
.super Landroid/app/Activity;
.source "EmulatorActivity.java"


# instance fields
.field final button_listener:Landroid/view/View$OnTouchListener;

.field private keyMapping:Landroid/util/SparseIntArray;

.field private keyStates:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    const-string v0, "e"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    new-instance v0, Laenu/aps3e/EmulatorActivity$1;

    invoke-direct {v0, p0}, Laenu/aps3e/EmulatorActivity$1;-><init>(Laenu/aps3e/EmulatorActivity;)V

    iput-object v0, p0, Laenu/aps3e/EmulatorActivity;->button_listener:Landroid/view/View$OnTouchListener;

    .line 218
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Laenu/aps3e/EmulatorActivity;->keyMapping:Landroid/util/SparseIntArray;

    .line 219
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Laenu/aps3e/EmulatorActivity;->keyStates:Landroid/util/SparseBooleanArray;

    .line 11
    return-void
.end method


# virtual methods
.method loadKeyMap()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 223
    iget-object v0, p0, Laenu/aps3e/EmulatorActivity;->keyMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 224
    iget-object v0, p0, Laenu/aps3e/EmulatorActivity;->keyStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    move v0, v1

    .line 226
    :goto_0
    sget-object v3, Laenu/aps3e/KeyMapConfig;->KEY_NAMEIDS:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 236
    return-void

    .line 228
    :cond_0
    sget-object v3, Laenu/aps3e/KeyMapConfig;->KEY_NAMEIDS:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Laenu/aps3e/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 232
    if-eqz v3, :cond_1

    .line 233
    iget-object v4, p0, Laenu/aps3e/EmulatorActivity;->keyMapping:Landroid/util/SparseIntArray;

    sget-object v5, Laenu/aps3e/KeyMapConfig;->KEY_VALUES:[I

    aget v5, v5, v0

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "aps3e_java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "emu "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Laenu/aps3e/EmulatorActivity;->setContentView(I)V

    .line 120
    const v0, 0x7f020006

    invoke-virtual {p0, v0}, Laenu/aps3e/EmulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Laenu/aps3e/GameFrameView;

    .line 121
    invoke-virtual {p0}, Laenu/aps3e/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "meta_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Laenu/aps3e/Emulator$MetaInfo;

    iput-object v1, v0, Laenu/aps3e/GameFrameView;->meta_info:Laenu/aps3e/Emulator$MetaInfo;

    .line 123
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 165
    return-void

    .line 123
    :array_0
    .array-data 4
        0x7f02001e
        0x7f020022
        0x7f020021
        0x7f02001d
        0x7f020003
        0x7f020001
        0x7f020005
        0x7f020000
        0x7f020002
        0x7f020004
    .end array-data
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 346
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 347
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 241
    iget-object v1, p0, Laenu/aps3e/EmulatorActivity;->keyMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 242
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-object v1, p0, Laenu/aps3e/EmulatorActivity;->keyMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 249
    iget-object v2, p0, Laenu/aps3e/EmulatorActivity;->keyStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    iget-object v2, p0, Laenu/aps3e/EmulatorActivity;->keyStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 251
    sget-object v2, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v2, v1, v0}, Laenu/aps3e/Emulator;->key_event(IZ)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Laenu/aps3e/EmulatorActivity;->keyMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 259
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    .line 262
    :cond_0
    iget-object v0, p0, Laenu/aps3e/EmulatorActivity;->keyMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 265
    iget-object v1, p0, Laenu/aps3e/EmulatorActivity;->keyStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Laenu/aps3e/EmulatorActivity;->keyStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 267
    sget-object v1, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v1, v0, v2}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 272
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 317
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v0}, Laenu/aps3e/Emulator;->pause()Z

    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 320
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 327
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v0}, Laenu/aps3e/Emulator;->resume()V

    .line 328
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 334
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v0}, Laenu/aps3e/Emulator;->quit()V

    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 337
    return-void
.end method

.method pressed(IZ)V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v0, p1, p2}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 108
    return-void
.end method
