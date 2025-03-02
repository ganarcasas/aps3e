.class public Laenu/aps3e/Emulator;
.super Ljava/lang/Object;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laenu/aps3e/Emulator$BootException;,
        Laenu/aps3e/Emulator$MetaInfo;
    }
.end annotation


# static fields
.field public static final get:Laenu/aps3e/Emulator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Laenu/aps3e/Emulator;

    invoke-direct {v0}, Laenu/aps3e/Emulator;-><init>()V

    sput-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native boot(Landroid/view/Surface;Laenu/aps3e/Emulator$MetaInfo;)V
.end method

.method public native boot_disc(Landroid/view/Surface;Ljava/lang/String;)V
.end method

.method public native inatall_iso(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native install_firmware(Ljava/lang/String;)Z
.end method

.method public native install_pkg(Ljava/lang/String;)Z
.end method

.method public native key_event(IZ)V
.end method

.method public native meta_info_from_iso(Ljava/lang/String;)Laenu/aps3e/Emulator$MetaInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public native meta_info_from_psf(Ljava/lang/String;)Laenu/aps3e/Emulator$MetaInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public native pause()Z
.end method

.method public native quit()V
.end method

.method public native resume()V
.end method
