.class public Laenu/aps3e/InstallFrimware;
.super Ljava/lang/Object;
.source "InstallFrimware.java"


# static fields
.field private static final LOAD_DONE:I = -0x55ffffff

.field private static final LOAD_FAILED:I = -0x56000000

.field static final done_f:Ljava/io/File;


# instance fields
.field context:Landroid/content/Context;

.field firmware_path:Ljava/lang/String;

.field private final install_firmware_handler:Landroid/os/Handler;

.field private install_firmware_thread:Ljava/lang/Thread;

.field private load_dialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "aps3e/config/dev_flash/.installed"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Laenu/aps3e/InstallFrimware;->done_f:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Laenu/aps3e/InstallFrimware$1;

    invoke-direct {v0, p0}, Laenu/aps3e/InstallFrimware$1;-><init>(Laenu/aps3e/InstallFrimware;)V

    iput-object v0, p0, Laenu/aps3e/InstallFrimware;->install_firmware_handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Laenu/aps3e/InstallFrimware$2;

    invoke-direct {v0, p0}, Laenu/aps3e/InstallFrimware$2;-><init>(Laenu/aps3e/InstallFrimware;)V

    iput-object v0, p0, Laenu/aps3e/InstallFrimware;->install_firmware_thread:Ljava/lang/Thread;

    .line 10
    return-void
.end method

.method static synthetic access$0(Laenu/aps3e/InstallFrimware;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Laenu/aps3e/InstallFrimware;->load_dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Laenu/aps3e/InstallFrimware;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Laenu/aps3e/InstallFrimware;->load_dialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$2(Laenu/aps3e/InstallFrimware;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Laenu/aps3e/InstallFrimware;->install_firmware_thread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$3(Laenu/aps3e/InstallFrimware;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Laenu/aps3e/InstallFrimware;->install_firmware_handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized start_install_firmware(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    const-class v1, Laenu/aps3e/InstallFrimware;

    monitor-enter v1

    :try_start_0
    new-instance v0, Laenu/aps3e/InstallFrimware;

    invoke-direct {v0}, Laenu/aps3e/InstallFrimware;-><init>()V

    .line 88
    invoke-virtual {v0, p0, p1}, Laenu/aps3e/InstallFrimware;->set(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Laenu/aps3e/InstallFrimware;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v1

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method call()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Laenu/aps3e/InstallFrimware;->context:Landroid/content/Context;

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Laenu/aps3e/InstallFrimware;->createLoadingDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Laenu/aps3e/InstallFrimware;->load_dialog:Landroid/app/Dialog;

    .line 82
    iget-object v0, p0, Laenu/aps3e/InstallFrimware;->load_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 83
    iget-object v0, p0, Laenu/aps3e/InstallFrimware;->install_firmware_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method

.method public final createLoadingDialog(Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Laenu/aps3e/InstallFrimware;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    new-instance v1, Laenu/aps3e/InstallFrimware$3;

    invoke-direct {v1, p0}, Laenu/aps3e/InstallFrimware$3;-><init>(Laenu/aps3e/InstallFrimware;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 72
    return-object v0
.end method

.method set(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Laenu/aps3e/InstallFrimware;->context:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Laenu/aps3e/InstallFrimware;->firmware_path:Ljava/lang/String;

    .line 78
    return-void
.end method
