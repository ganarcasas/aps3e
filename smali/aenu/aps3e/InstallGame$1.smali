.class Laenu/aps3e/InstallGame$1;
.super Landroid/os/Handler;
.source "InstallGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/InstallGame;
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
    .line 29
    iput-object p1, p0, Laenu/aps3e/InstallGame$1;->this$0:Laenu/aps3e/InstallGame;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Laenu/aps3e/InstallGame$1;->this$0:Laenu/aps3e/InstallGame;

    invoke-static {v0}, Laenu/aps3e/InstallGame;->access$0(Laenu/aps3e/InstallGame;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 33
    iget-object v0, p0, Laenu/aps3e/InstallGame$1;->this$0:Laenu/aps3e/InstallGame;

    invoke-static {v0}, Laenu/aps3e/InstallGame;->access$0(Laenu/aps3e/InstallGame;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 34
    iget-object v0, p0, Laenu/aps3e/InstallGame$1;->this$0:Laenu/aps3e/InstallGame;

    invoke-static {v0, v1}, Laenu/aps3e/InstallGame;->access$1(Laenu/aps3e/InstallGame;Landroid/app/Dialog;)V

    .line 36
    iget-object v0, p0, Laenu/aps3e/InstallGame$1;->this$0:Laenu/aps3e/InstallGame;

    invoke-static {v0, v1}, Laenu/aps3e/InstallGame;->access$2(Laenu/aps3e/InstallGame;Ljava/lang/Thread;)V

    .line 40
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x52000000

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Laenu/aps3e/InstallGame$1;->this$0:Laenu/aps3e/InstallGame;

    iget-object v0, v0, Laenu/aps3e/InstallGame;->context:Landroid/content/Context;

    const-string v1, "\u52a0\u8f7d\u6e38\u620f\u5931\u8d25"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x51ffffff

    if-eq v0, v1, :cond_0

    .line 46
    const-string v0, "aps3e_java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown message -- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
