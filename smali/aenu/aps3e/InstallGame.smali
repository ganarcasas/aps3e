.class public Laenu/aps3e/InstallGame;
.super Ljava/lang/Object;
.source "InstallGame.java"


# static fields
.field private static final INSTALL_DONE:I = -0x51ffffff

.field private static final INSTALL_FAILED:I = -0x52000000


# instance fields
.field context:Landroid/content/Context;

.field private final install_firmware_handler:Landroid/os/Handler;

.field private install_firmware_thread:Ljava/lang/Thread;

.field private load_dialog:Landroid/app/Dialog;

.field res_path:Ljava/lang/String;

.field serial:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Laenu/aps3e/InstallGame$1;

    invoke-direct {v0, p0}, Laenu/aps3e/InstallGame$1;-><init>(Laenu/aps3e/InstallGame;)V

    iput-object v0, p0, Laenu/aps3e/InstallGame;->install_firmware_handler:Landroid/os/Handler;

    .line 54
    new-instance v0, Laenu/aps3e/InstallGame$2;

    invoke-direct {v0, p0}, Laenu/aps3e/InstallGame$2;-><init>(Laenu/aps3e/InstallGame;)V

    iput-object v0, p0, Laenu/aps3e/InstallGame;->install_firmware_thread:Ljava/lang/Thread;

    .line 10
    return-void
.end method

.method static synthetic access$0(Laenu/aps3e/InstallGame;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Laenu/aps3e/InstallGame;->load_dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Laenu/aps3e/InstallGame;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Laenu/aps3e/InstallGame;->load_dialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$2(Laenu/aps3e/InstallGame;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Laenu/aps3e/InstallGame;->install_firmware_thread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$3(Laenu/aps3e/InstallGame;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Laenu/aps3e/InstallGame;->install_firmware_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static game_dir(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 16
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aps3e/config/dev_hdd0/game/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized install_iso(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    const-class v1, Laenu/aps3e/InstallGame;

    monitor-enter v1

    :try_start_0
    new-instance v0, Laenu/aps3e/InstallGame;

    invoke-direct {v0}, Laenu/aps3e/InstallGame;-><init>()V

    .line 110
    invoke-virtual {v0, p0, p1, p2}, Laenu/aps3e/InstallGame;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Laenu/aps3e/InstallGame;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit v1

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized install_pkg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    const-class v1, Laenu/aps3e/InstallGame;

    monitor-enter v1

    :try_start_0
    new-instance v0, Laenu/aps3e/InstallGame;

    invoke-direct {v0}, Laenu/aps3e/InstallGame;-><init>()V

    .line 116
    invoke-virtual {v0, p0, p1, p2}, Laenu/aps3e/InstallGame;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Laenu/aps3e/InstallGame;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit v1

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method call()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Laenu/aps3e/InstallGame;->context:Landroid/content/Context;

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Laenu/aps3e/InstallGame;->createLoadingDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Laenu/aps3e/InstallGame;->load_dialog:Landroid/app/Dialog;

    .line 104
    iget-object v0, p0, Laenu/aps3e/InstallGame;->load_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 105
    iget-object v0, p0, Laenu/aps3e/InstallGame;->install_firmware_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method

.method public final createLoadingDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Laenu/aps3e/InstallGame;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    new-instance v1, Laenu/aps3e/InstallGame$3;

    invoke-direct {v1, p0}, Laenu/aps3e/InstallGame$3;-><init>(Laenu/aps3e/InstallGame;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 93
    return-object v0
.end method

.method set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Laenu/aps3e/InstallGame;->context:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Laenu/aps3e/InstallGame;->res_path:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Laenu/aps3e/InstallGame;->serial:Ljava/lang/String;

    .line 100
    return-void
.end method
