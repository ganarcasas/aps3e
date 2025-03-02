.class Lorg/vita3k/emulator/overlay/InputOverlay$1;
.super Ljava/util/TimerTask;
.source "InputOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/vita3k/emulator/overlay/InputOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/vita3k/emulator/overlay/InputOverlay;


# direct methods
.method constructor <init>(Lorg/vita3k/emulator/overlay/InputOverlay;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/vita3k/emulator/overlay/InputOverlay$1;->this$0:Lorg/vita3k/emulator/overlay/InputOverlay;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay$1;->this$0:Lorg/vita3k/emulator/overlay/InputOverlay;

    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlay;->tick()V

    .line 133
    return-void
.end method
