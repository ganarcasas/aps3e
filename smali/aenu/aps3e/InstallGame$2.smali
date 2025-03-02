.class Laenu/aps3e/InstallGame$2;
.super Ljava/lang/Thread;
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
    .line 54
    iput-object p1, p0, Laenu/aps3e/InstallGame$2;->this$0:Laenu/aps3e/InstallGame;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    :try_start_0
    iget-object v0, p0, Laenu/aps3e/InstallGame$2;->this$0:Laenu/aps3e/InstallGame;

    iget-object v0, v0, Laenu/aps3e/InstallGame;->serial:Ljava/lang/String;

    invoke-static {v0}, Laenu/aps3e/InstallGame;->game_dir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    iget-object v0, p0, Laenu/aps3e/InstallGame$2;->this$0:Laenu/aps3e/InstallGame;

    iget-object v0, v0, Laenu/aps3e/InstallGame;->res_path:Ljava/lang/String;

    const-string v1, ".iso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    iget-object v1, p0, Laenu/aps3e/InstallGame$2;->this$0:Laenu/aps3e/InstallGame;

    iget-object v1, v1, Laenu/aps3e/InstallGame;->res_path:Ljava/lang/String;

    iget-object v2, p0, Laenu/aps3e/InstallGame$2;->this$0:Laenu/aps3e/InstallGame;

    iget-object v2, v2, Laenu/aps3e/InstallGame;->serial:Ljava/lang/String;

    invoke-static {v2}, Laenu/aps3e/InstallGame;->game_dir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laenu/aps3e/Emulator;->inatall_iso(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    :goto_0
    iget-object v0, p0, Laenu/aps3e/InstallGame$2;->this$0:Laenu/aps3e/InstallGame;

    invoke-static {v0}, Laenu/aps3e/InstallGame;->access$3(Laenu/aps3e/InstallGame;)Landroid/os/Handler;

    move-result-object v0

    const v1, -0x51ffffff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    :goto_1
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Laenu/aps3e/InstallGame$2;->this$0:Laenu/aps3e/InstallGame;

    iget-object v0, v0, Laenu/aps3e/InstallGame;->res_path:Ljava/lang/String;

    const-string v1, ".pkg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    iget-object v1, p0, Laenu/aps3e/InstallGame$2;->this$0:Laenu/aps3e/InstallGame;

    iget-object v1, v1, Laenu/aps3e/InstallGame;->res_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laenu/aps3e/Emulator;->install_pkg(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 71
    const-string v0, "aps3e_java"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Laenu/aps3e/InstallGame$2;->this$0:Laenu/aps3e/InstallGame;

    invoke-static {v0}, Laenu/aps3e/InstallGame;->access$3(Laenu/aps3e/InstallGame;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, -0x52000000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 64
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
