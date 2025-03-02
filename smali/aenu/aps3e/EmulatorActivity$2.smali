.class Laenu/aps3e/EmulatorActivity$2;
.super Landroid/os/Handler;
.source "EmulatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laenu/aps3e/EmulatorActivity;->error(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laenu/aps3e/EmulatorActivity;

.field private final synthetic val$msgId:I


# direct methods
.method constructor <init>(Laenu/aps3e/EmulatorActivity;I)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Laenu/aps3e/EmulatorActivity$2;->this$0:Laenu/aps3e/EmulatorActivity;

    iput p2, p0, Laenu/aps3e/EmulatorActivity$2;->val$msgId:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 81
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    .line 83
    const-string v2, "Unknown error."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 84
    const-string v2, "No bootable content was found."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 85
    const-string v2, "Disc could not be mounted properly. Make sure the disc is not in the dev_hdd0/game folder."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 87
    const-string v2, "The selected file or folder is invalid or corrupted."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 88
    const-string v2, "The virtual dev_bdvd folder does not exist or is not empty."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 89
    const-string v2, "Additional content could not be installed."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 90
    const-string v2, "Digital content could not be decrypted. This is usually caused by a missing or invalid license (RAP) file."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 92
    const-string v2, "The emulator could not create files required for booting."

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 94
    const-string v2, "This disc type is not supported yet."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 95
    const-string v2, "Savestate data is corrupted or it\'s not an RPCS3 savestate."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 96
    const-string v2, "Savestate versioning data differs from your RPCS3 build."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 97
    const-string v2, "A game or PS3 application is still running or has yet to be fully stopped."

    aput-object v2, v0, v1

    .line 100
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Laenu/aps3e/EmulatorActivity$2;->this$0:Laenu/aps3e/EmulatorActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const-string v2, "Error"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    iget v2, p0, Laenu/aps3e/EmulatorActivity$2;->val$msgId:I

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    const-string v0, "Quit"

    new-instance v2, Laenu/aps3e/EmulatorActivity$2$1;

    invoke-direct {v2, p0}, Laenu/aps3e/EmulatorActivity$2$1;-><init>(Laenu/aps3e/EmulatorActivity$2;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 115
    return-void
.end method
