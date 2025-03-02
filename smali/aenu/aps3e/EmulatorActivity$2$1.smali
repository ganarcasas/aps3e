.class Laenu/aps3e/EmulatorActivity$2$1;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laenu/aps3e/EmulatorActivity$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laenu/aps3e/EmulatorActivity$2;


# direct methods
.method constructor <init>(Laenu/aps3e/EmulatorActivity$2;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Laenu/aps3e/EmulatorActivity$2$1;->this$1:Laenu/aps3e/EmulatorActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 109
    return-void
.end method
