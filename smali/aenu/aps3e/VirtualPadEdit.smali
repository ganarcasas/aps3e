.class public Laenu/aps3e/VirtualPadEdit;
.super Landroid/app/Activity;
.source "VirtualPadEdit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance v0, Lorg/vita3k/emulator/overlay/InputOverlay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/vita3k/emulator/overlay/InputOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Laenu/aps3e/VirtualPadEdit;->setContentView(Landroid/view/View;)V

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlay;->setIsInEditMode(Z)V

    .line 17
    return-void
.end method
