.class Laenu/aps3e/InstallFrimware$1;
.super Landroid/os/Handler;
.source "InstallFrimware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/InstallFrimware;
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
    .line 17
    iput-object p1, p0, Laenu/aps3e/InstallFrimware$1;->this$0:Laenu/aps3e/InstallFrimware;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 20
    iget-object v0, p0, Laenu/aps3e/InstallFrimware$1;->this$0:Laenu/aps3e/InstallFrimware;

    invoke-static {v0}, Laenu/aps3e/InstallFrimware;->access$0(Laenu/aps3e/InstallFrimware;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 21
    iget-object v0, p0, Laenu/aps3e/InstallFrimware$1;->this$0:Laenu/aps3e/InstallFrimware;

    invoke-static {v0}, Laenu/aps3e/InstallFrimware;->access$0(Laenu/aps3e/InstallFrimware;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 22
    iget-object v0, p0, Laenu/aps3e/InstallFrimware$1;->this$0:Laenu/aps3e/InstallFrimware;

    invoke-static {v0, v1}, Laenu/aps3e/InstallFrimware;->access$1(Laenu/aps3e/InstallFrimware;Landroid/app/Dialog;)V

    .line 24
    iget-object v0, p0, Laenu/aps3e/InstallFrimware$1;->this$0:Laenu/aps3e/InstallFrimware;

    invoke-static {v0, v1}, Laenu/aps3e/InstallFrimware;->access$2(Laenu/aps3e/InstallFrimware;Ljava/lang/Thread;)V

    .line 28
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x56000000

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Laenu/aps3e/InstallFrimware$1;->this$0:Laenu/aps3e/InstallFrimware;

    iget-object v0, v0, Laenu/aps3e/InstallFrimware;->context:Landroid/content/Context;

    const-string v1, "\u5b89\u88c5\u56fa\u4ef6\u5931\u8d25"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 37
    :goto_0
    return-void

    .line 30
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x55ffffff

    if-ne v0, v1, :cond_1

    .line 31
    sget-object v0, Laenu/aps3e/InstallFrimware;->done_f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 33
    :cond_1
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
.end method
