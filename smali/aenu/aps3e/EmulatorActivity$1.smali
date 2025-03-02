.class Laenu/aps3e/EmulatorActivity$1;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/EmulatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laenu/aps3e/EmulatorActivity;


# direct methods
.method constructor <init>(Laenu/aps3e/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Laenu/aps3e/EmulatorActivity$1;->this$0:Laenu/aps3e/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    .line 38
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 71
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 62
    :sswitch_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 63
    goto :goto_1

    .line 41
    :sswitch_1
    invoke-virtual {p0, v1, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 42
    goto :goto_1

    .line 44
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 45
    goto :goto_1

    .line 47
    :sswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 48
    goto :goto_1

    .line 50
    :sswitch_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 51
    goto :goto_1

    .line 53
    :sswitch_5
    const/16 v0, 0x17

    invoke-virtual {p0, v0, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 54
    goto :goto_1

    .line 56
    :sswitch_6
    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 57
    goto :goto_1

    .line 59
    :sswitch_7
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 60
    goto :goto_1

    .line 65
    :sswitch_8
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 66
    goto :goto_1

    .line 68
    :sswitch_9
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, Laenu/aps3e/EmulatorActivity$1;->pressed(IZ)V

    move v0, v1

    .line 69
    goto :goto_1

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x7f020000 -> :sswitch_0
        0x7f020001 -> :sswitch_6
        0x7f020002 -> :sswitch_8
        0x7f020003 -> :sswitch_5
        0x7f020004 -> :sswitch_9
        0x7f020005 -> :sswitch_7
        0x7f02001d -> :sswitch_4
        0x7f02001e -> :sswitch_1
        0x7f020021 -> :sswitch_3
        0x7f020022 -> :sswitch_2
    .end sparse-switch
.end method

.method pressed(IZ)V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v0, p1, p2}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 31
    return-void
.end method
