.class Laenu/aps3e/InstallFrimware$2;
.super Ljava/lang/Thread;
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
    .line 41
    iput-object p1, p0, Laenu/aps3e/InstallFrimware$2;->this$0:Laenu/aps3e/InstallFrimware;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    :try_start_0
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    iget-object v1, p0, Laenu/aps3e/InstallFrimware$2;->this$0:Laenu/aps3e/InstallFrimware;

    iget-object v1, v1, Laenu/aps3e/InstallFrimware;->firmware_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laenu/aps3e/Emulator;->install_firmware(Ljava/lang/String;)Z

    .line 46
    iget-object v0, p0, Laenu/aps3e/InstallFrimware$2;->this$0:Laenu/aps3e/InstallFrimware;

    invoke-static {v0}, Laenu/aps3e/InstallFrimware;->access$3(Laenu/aps3e/InstallFrimware;)Landroid/os/Handler;

    move-result-object v0

    const v1, -0x55ffffff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 49
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 51
    const-string v0, "aps3e_java"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Laenu/aps3e/InstallFrimware$2;->this$0:Laenu/aps3e/InstallFrimware;

    invoke-static {v0}, Laenu/aps3e/InstallFrimware;->access$3(Laenu/aps3e/InstallFrimware;)Landroid/os/Handler;

    move-result-object v0

    const/high16 v1, -0x56000000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
