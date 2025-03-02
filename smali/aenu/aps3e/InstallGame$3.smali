.class Laenu/aps3e/InstallGame$3;
.super Ljava/lang/Object;
.source "InstallGame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laenu/aps3e/InstallGame;->createLoadingDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laenu/aps3e/InstallGame;


# direct methods
.method constructor <init>(Laenu/aps3e/InstallGame;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Laenu/aps3e/InstallGame$3;->this$0:Laenu/aps3e/InstallGame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method
