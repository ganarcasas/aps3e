.class Laenu/aps3e/InstallFrimware$3;
.super Ljava/lang/Object;
.source "InstallFrimware.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laenu/aps3e/InstallFrimware;->createLoadingDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laenu/aps3e/InstallFrimware;


# direct methods
.method constructor <init>(Laenu/aps3e/InstallFrimware;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Laenu/aps3e/InstallFrimware$3;->this$0:Laenu/aps3e/InstallFrimware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method
