.class public final Lorg/vita3k/emulator/overlay/InputOverlay;
.super Landroid/view/SurfaceView;
.source "InputOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/vita3k/emulator/overlay/InputOverlay$ButtonType;,
        Lorg/vita3k/emulator/overlay/InputOverlay$ControlId;
    }
.end annotation


# static fields
.field public static final OVERLAY_MASK_BASIC:I = 0x1

.field public static final OVERLAY_MASK_TOUCH_SCREEN_SWITCH:I = 0x4

.field private static final OVERLAY_TIME_BEFORE_HIDE:I = 0xa

.field private static mGlobalOpacity:I

.field private static mGlobalScale:F


# instance fields
.field private mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

.field private mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

.field private mIsInEditMode:Z

.field private mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

.field private final mOverlayMask:I

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mShowingOverlay:Z

.field private mSurfacePosition:Landroid/graphics/Rect;

.field private mTimer:Ljava/util/Timer;

.field private mlastTouchTime:J

.field private final overlayButtons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;",
            ">;"
        }
    .end annotation
.end field

.field private final overlayDpads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;",
            ">;"
        }
    .end annotation
.end field

.field private final overlayJoysticks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalScale:F

    .line 63
    const/16 v0, 0x64

    sput v0, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalOpacity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayDpads:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayJoysticks:Ljava/util/Set;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mSurfacePosition:Landroid/graphics/Rect;

    .line 57
    iput v5, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mOverlayMask:I

    .line 58
    iput-boolean v4, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mIsInEditMode:Z

    .line 70
    iput-boolean v5, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mShowingOverlay:Z

    .line 105
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mPreferences:Landroid/content/SharedPreferences;

    .line 106
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "OverlayInit"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->defaultOverlay()V

    .line 112
    :cond_0
    invoke-virtual {p0, p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    invoke-virtual {p0, v4}, Lorg/vita3k/emulator/overlay/InputOverlay;->setWillNotDraw(Z)V

    .line 118
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->requestFocus()Z

    .line 120
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    const-string v1, "OverlayInit"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->refreshControls()V

    .line 125
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mTimer:Ljava/util/Timer;

    .line 128
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mTimer:Ljava/util/Timer;

    new-instance v1, Lorg/vita3k/emulator/overlay/InputOverlay$1;

    invoke-direct {v1, p0}, Lorg/vita3k/emulator/overlay/InputOverlay$1;-><init>(Lorg/vita3k/emulator/overlay/InputOverlay;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 136
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->resetHideTimer()V

    .line 137
    return-void
.end method

.method private addVitaOverlayControls(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 581
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010003

    .line 582
    const v2, 0x7f010004

    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 583
    const/4 v6, 0x1

    move-object v5, p1

    .line 581
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010001

    .line 586
    const v2, 0x7f010002

    const/4 v3, 0x1

    const/4 v4, 0x7

    .line 587
    const/4 v6, 0x1

    move-object v5, p1

    .line 585
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010011

    .line 590
    const v2, 0x7f010012

    const/4 v3, 0x2

    const/4 v4, 0x5

    .line 591
    const/4 v6, 0x1

    move-object v5, p1

    .line 589
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010017

    .line 594
    const v2, 0x7f010018

    const/4 v3, 0x3

    const/16 v4, 0x8

    .line 595
    const/4 v6, 0x1

    move-object v5, p1

    .line 593
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010013

    .line 598
    const v2, 0x7f010014

    const/4 v3, 0x5

    .line 599
    const/16 v4, 0x17

    const/4 v6, 0x1

    move-object v5, p1

    .line 597
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000f

    .line 602
    const v2, 0x7f010010

    const/4 v3, 0x4

    .line 603
    const/16 v4, 0x18

    const/4 v6, 0x1

    move-object v5, p1

    .line 601
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 605
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010005

    .line 606
    const v2, 0x7f010009

    const/16 v3, 0x14

    .line 607
    const/16 v4, 0x11

    const/4 v6, 0x1

    move-object v5, p1

    .line 605
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000a

    .line 610
    const v2, 0x7f01000e

    const/16 v3, 0x15

    .line 611
    const/16 v4, 0x14

    const/4 v6, 0x1

    move-object v5, p1

    .line 609
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010006

    .line 614
    const v2, 0x7f010007

    const/16 v3, 0x16

    .line 615
    const/16 v4, 0x12

    const/4 v6, 0x1

    move-object v5, p1

    .line 613
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 617
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000b

    .line 618
    const v2, 0x7f01000c

    const/16 v3, 0x17

    .line 619
    const/16 v4, 0x15

    const/4 v6, 0x1

    move-object v5, p1

    .line 617
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 621
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010008

    .line 622
    const v2, 0x7f010009

    const/16 v3, 0x18

    .line 623
    const/16 v4, 0x13

    const/4 v6, 0x1

    move-object v5, p1

    .line 621
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01000d

    .line 626
    const v2, 0x7f01000e

    const/16 v3, 0x19

    .line 627
    const/16 v4, 0x16

    const/4 v6, 0x1

    move-object v5, p1

    .line 625
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010001

    .line 630
    const v2, 0x7f010002

    const/16 v3, 0x29a

    .line 631
    const/16 v4, 0x19

    const/4 v6, 0x1

    move-object v5, p1

    .line 629
    invoke-static/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v10, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayDpads:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010019

    .line 639
    const v2, 0x7f01001a

    .line 640
    const v3, 0x7f01001b

    .line 641
    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x4

    .line 642
    const/4 v7, 0x1

    const/4 v8, 0x3

    move-object v9, p1

    .line 638
    invoke-static/range {v0 .. v9}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayDpad(Landroid/content/Context;IIIIIIIILjava/lang/String;)Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v8, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayJoysticks:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010021

    .line 645
    const v2, 0x7f01001f

    const v3, 0x7f010020

    .line 646
    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p1

    .line 644
    invoke-static/range {v0 .. v7}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayJoystick(Landroid/content/Context;IIIIIILjava/lang/String;)Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v8, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayJoysticks:Ljava/util/Set;

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010021

    .line 650
    const v2, 0x7f01001f

    const v3, 0x7f010020

    .line 651
    const/16 v4, 0xf

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v7, p1

    .line 649
    invoke-static/range {v0 .. v7}, Lorg/vita3k/emulator/overlay/InputOverlay;->initializeOverlayJoystick(Landroid/content/Context;IIIIIILjava/lang/String;)Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 653
    return-void
.end method

.method private defaultOverlay()V
    .locals 3

    .prologue
    .line 938
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "OverlayInit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->vitaDefaultOverlay()V

    .line 943
    :cond_0
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 944
    const-string v1, "OverlayInit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 945
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 946
    return-void
.end method

.method private static getKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getXKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    const-string v0, "-X"

    invoke-static {p0, p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getYKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    const-string v0, "-Y"

    invoke-static {p0, p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initializeOverlayButton(Landroid/content/Context;IIIILjava/lang/String;I)Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 749
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 752
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 755
    const v0, 0x3e19999a    # 0.15f

    .line 757
    const/16 v2, 0x14

    if-eq p3, v2, :cond_0

    .line 758
    const/16 v2, 0x15

    if-eq p3, v2, :cond_0

    .line 759
    const/16 v2, 0x16

    if-eq p3, v2, :cond_0

    .line 760
    const/16 v2, 0x17

    if-eq p3, v2, :cond_0

    .line 761
    const/16 v2, 0x18

    if-eq p3, v2, :cond_0

    .line 762
    const/16 v2, 0x19

    if-eq p3, v2, :cond_0

    .line 763
    const/4 v2, 0x5

    if-eq p3, v2, :cond_0

    .line 764
    const/4 v2, 0x4

    if-ne p3, v2, :cond_2

    .line 765
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    .line 769
    :cond_1
    :goto_0
    sget v2, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalScale:F

    mul-float/2addr v0, v2

    .line 773
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lorg/vita3k/emulator/overlay/InputOverlay;->resizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 775
    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lorg/vita3k/emulator/overlay/InputOverlay;->resizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 777
    new-instance v0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)V

    .line 782
    invoke-static {p3, p5}, Lorg/vita3k/emulator/overlay/InputOverlay;->getXKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-int v1, v1

    .line 783
    invoke-static {p3, p5}, Lorg/vita3k/emulator/overlay/InputOverlay;->getYKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-int v2, v2

    .line 785
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getWidth()I

    move-result v3

    .line 786
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getHeight()I

    move-result v4

    .line 790
    add-int/2addr v3, v1

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->setBounds(IIII)V

    .line 793
    invoke-virtual {v0, v1, v2}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->setPosition(II)V

    .line 794
    sget v1, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalOpacity:I

    int-to-double v2, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->setOpacity(I)V

    .line 796
    return-object v0

    .line 766
    :cond_2
    const/16 v2, 0x29a

    if-ne p3, v2, :cond_1

    .line 767
    const v0, 0x3d23d70a    # 0.04f

    goto :goto_0
.end method

.method private static initializeOverlayDpad(Landroid/content/Context;IIIIIIIILjava/lang/String;)Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;
    .locals 13

    .prologue
    .line 825
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 828
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 831
    const v2, 0x3eb33333    # 0.35f

    .line 833
    sget v4, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalScale:F

    mul-float/2addr v2, v4

    .line 837
    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lorg/vita3k/emulator/overlay/InputOverlay;->resizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 839
    invoke-static {v3, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {p0, v5, v2}, Lorg/vita3k/emulator/overlay/InputOverlay;->resizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 842
    move/from16 v0, p3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {p0, v6, v2}, Lorg/vita3k/emulator/overlay/InputOverlay;->resizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 845
    new-instance v2, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIII)V

    .line 851
    move/from16 v0, p4

    move-object/from16 v1, p9

    invoke-static {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlay;->getXKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v12, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    float-to-int v3, v3

    .line 852
    move/from16 v0, p4

    move-object/from16 v1, p9

    invoke-static {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlay;->getYKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v12, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    float-to-int v4, v4

    .line 854
    invoke-virtual {v2}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getWidth()I

    move-result v5

    .line 855
    invoke-virtual {v2}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getHeight()I

    move-result v6

    .line 859
    add-int/2addr v5, v3

    add-int/2addr v6, v4

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setBounds(IIII)V

    .line 862
    invoke-virtual {v2, v3, v4}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setPosition(II)V

    .line 863
    sget v3, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalOpacity:I

    int-to-double v4, v3

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setOpacity(I)V

    .line 865
    return-object v2
.end method

.method private static initializeOverlayJoystick(Landroid/content/Context;IIIIIILjava/lang/String;)Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;
    .locals 15

    .prologue
    .line 885
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 888
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 891
    const v4, 0x3e8ccccd    # 0.275f

    .line 892
    sget v5, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalScale:F

    mul-float/2addr v4, v5

    .line 896
    move/from16 v0, p1

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lorg/vita3k/emulator/overlay/InputOverlay;->resizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 897
    move/from16 v0, p2

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 898
    move/from16 v0, p3

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 902
    move/from16 v0, p4

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlay;->getXKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    float-to-int v12, v7

    .line 903
    move/from16 v0, p4

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlay;->getYKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-int v13, v2

    .line 906
    const/high16 v2, 0x3fb00000    # 1.375f

    .line 910
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 911
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v12, v9

    add-int v10, v13, v9

    invoke-direct {v7, v12, v13, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 912
    new-instance v8, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    int-to-float v14, v9

    div-float/2addr v14, v2

    float-to-int v14, v14

    int-to-float v9, v9

    div-float v2, v9, v2

    float-to-int v2, v2

    invoke-direct {v8, v10, v11, v14, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 916
    new-instance v2, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 920
    invoke-virtual {v2, v12, v13}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->setPosition(II)V

    .line 921
    sget v3, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalOpacity:I

    int-to-double v4, v3

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->setOpacity(I)V

    .line 923
    return-object v2
.end method

.method private resetHideTimer()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mShowingOverlay:Z

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->invalidate()V

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mShowingOverlay:Z

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mlastTouchTime:J

    .line 145
    return-void
.end method

.method public static resizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 90
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    .line 91
    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 92
    const/4 v2, 0x1

    .line 89
    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private saveControlPosition(IIILjava/lang/String;)V
    .locals 3

    .prologue
    .line 692
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 693
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 694
    invoke-static {p1, p4}, Lorg/vita3k/emulator/overlay/InputOverlay;->getXKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 695
    invoke-static {p1, p4}, Lorg/vita3k/emulator/overlay/InputOverlay;->getYKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, p3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 697
    return-void
.end method

.method private setDpadState(Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;ZZZZ)V
    .locals 1

    .prologue
    .line 550
    if-eqz p2, :cond_3

    .line 552
    if-eqz p4, :cond_1

    .line 553
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setState(I)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    if-eqz p5, :cond_2

    .line 555
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setState(I)V

    goto :goto_0

    .line 557
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setState(I)V

    goto :goto_0

    .line 559
    :cond_3
    if-eqz p3, :cond_6

    .line 561
    if-eqz p4, :cond_4

    .line 562
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setState(I)V

    goto :goto_0

    .line 563
    :cond_4
    if-eqz p5, :cond_5

    .line 564
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setState(I)V

    goto :goto_0

    .line 566
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setState(I)V

    goto :goto_0

    .line 568
    :cond_6
    if-eqz p4, :cond_7

    .line 570
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setState(I)V

    goto :goto_0

    .line 572
    :cond_7
    if-eqz p5, :cond_0

    .line 574
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setState(I)V

    goto :goto_0
.end method

.method private vitaDefaultOverlay()V
    .locals 7

    .prologue
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 950
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 953
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 954
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 955
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 956
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v0

    .line 957
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v0

    .line 959
    cmpl-float v0, v2, v1

    if-lez v0, :cond_0

    move v0, v1

    move v3, v2

    .line 965
    :goto_0
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 969
    const-string v2, "0-X"

    .line 970
    const v5, 0x7f030002

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 969
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 971
    const-string v2, "0-Y"

    .line 972
    const v5, 0x7f030003

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 971
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 973
    const-string v2, "1-X"

    .line 974
    const/high16 v5, 0x7f030000

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 973
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 975
    const-string v2, "1-Y"

    .line 976
    const v5, 0x7f030001

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 975
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 977
    const-string v2, "2-X"

    .line 978
    const v5, 0x7f030008

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 977
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 979
    const-string v2, "2-Y"

    .line 980
    const v5, 0x7f030009

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 979
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 981
    const-string v2, "3-X"

    .line 982
    const v5, 0x7f03000c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 981
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 983
    const-string v2, "3-Y"

    .line 984
    const v5, 0x7f03000d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 983
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 985
    const-string v2, "4-X"

    .line 986
    const v5, 0x7f030006

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 985
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 987
    const-string v2, "4-Y"

    .line 988
    const v5, 0x7f030007

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 987
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 989
    const-string v2, "5-X"

    .line 990
    const v5, 0x7f03000a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 989
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 991
    const-string v2, "5-Y"

    .line 992
    const v5, 0x7f03000b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 991
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 993
    const-string v2, "6-X"

    .line 994
    const v5, 0x7f03000e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 993
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 995
    const-string v2, "6-Y"

    .line 996
    const v5, 0x7f03000f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 995
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 997
    const-string v2, "10-X"

    .line 998
    const v5, 0x7f030010

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 997
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 999
    const-string v2, "10-Y"

    .line 1000
    const v5, 0x7f030011

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 999
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1001
    const-string v2, "15-X"

    .line 1002
    const v5, 0x7f030012

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 1001
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1003
    const-string v2, "15-Y"

    .line 1004
    const v5, 0x7f030013

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 1003
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1005
    const-string v2, "20-X"

    .line 1006
    const v5, 0x7f030018

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 1005
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1007
    const-string v2, "20-Y"

    .line 1008
    const v5, 0x7f030019

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 1007
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1009
    const-string v2, "21-X"

    .line 1010
    const v5, 0x7f03001e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 1009
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1011
    const-string v2, "21-Y"

    .line 1012
    const v5, 0x7f03001f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 1011
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1013
    const-string v2, "22-X"

    .line 1014
    const v5, 0x7f030014

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 1013
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1015
    const-string v2, "22-Y"

    .line 1016
    const v5, 0x7f030015

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 1015
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1017
    const-string v2, "23-X"

    .line 1018
    const v5, 0x7f03001a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 1017
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1019
    const-string v2, "23-Y"

    .line 1020
    const v5, 0x7f03001b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 1019
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1022
    const-string v2, "24-X"

    .line 1023
    const v5, 0x7f030016

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 1022
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1024
    const-string v2, "24-Y"

    .line 1025
    const v5, 0x7f030017

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 1024
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1026
    const-string v2, "25-X"

    .line 1027
    const v5, 0x7f03001c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v3

    .line 1026
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1028
    const-string v2, "25-Y"

    .line 1029
    const v5, 0x7f03001d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 1028
    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1031
    const-string v2, "666-X"

    .line 1032
    const v5, 0x7f030004

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    mul-float/2addr v3, v5

    .line 1031
    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1033
    const-string v2, "666-Y"

    .line 1034
    const v3, 0x7f030005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    mul-float/2addr v0, v1

    .line 1033
    invoke-interface {v4, v2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1037
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1038
    return-void

    :cond_0
    move v0, v2

    move v3, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 190
    iget-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mShowingOverlay:Z

    if-nez v0, :cond_1

    .line 210
    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 201
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayDpads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 206
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayJoysticks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    .line 208
    invoke-virtual {v0, p1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 193
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    .line 195
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getRole()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 198
    invoke-virtual {v0, p1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 201
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    .line 203
    invoke-virtual {v0, p1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public isInEditMode()Z
    .locals 1

    .prologue
    .line 933
    iget-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mIsInEditMode:Z

    return v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 545
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 218
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->resetHideTimer()V

    .line 220
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0, p2}, Lorg/vita3k/emulator/overlay/InputOverlay;->onTouchWhileEditing(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 409
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 226
    const/4 v0, 0x5

    if-eq v2, v0, :cond_5

    .line 227
    const/4 v0, 0x6

    if-eq v2, v0, :cond_5

    .line 226
    const/4 v0, 0x1

    .line 228
    :goto_1
    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move v6, v0

    .line 230
    :goto_2
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 271
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayDpads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v0, v1

    :cond_3
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 337
    iget-object v1, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayJoysticks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_4
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 406
    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->invalidate()V

    goto :goto_0

    .line 226
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 228
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    move v6, v0

    goto :goto_2

    .line 232
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    .line 234
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getRole()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 238
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 243
    :pswitch_1
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 244
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->setPressedState(Z)V

    .line 247
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->setTrackId(I)V

    .line 248
    const/4 v1, 0x1

    .line 252
    sget-object v4, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getControl()I

    move-result v0

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    goto :goto_3

    .line 258
    :pswitch_2
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getTrackId()I

    move-result v4

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 260
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->setPressedState(Z)V

    .line 261
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getRole()I

    move-result v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_8

    .line 262
    sget-object v1, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getControl()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 264
    :cond_8
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->setTrackId(I)V

    .line 265
    const/4 v0, 0x1

    move v1, v0

    goto/16 :goto_3

    .line 271
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_4

    .line 279
    :pswitch_4
    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 280
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 282
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setTrackId(I)V

    .line 283
    const/4 v0, 0x1

    .line 286
    :cond_a
    :pswitch_5
    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getTrackId()I

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 288
    const/4 v7, 0x1

    .line 290
    const/4 v0, 0x4

    new-array v5, v0, [Z

    .line 292
    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    if-le v0, v2, :cond_b

    .line 293
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v5, v0

    .line 294
    :cond_b
    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    if-ge v0, v2, :cond_c

    .line 295
    const/4 v0, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v5, v0

    .line 296
    :cond_c
    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v0, v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    if-le v0, v2, :cond_d

    .line 297
    const/4 v0, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v5, v0

    .line 298
    :cond_d
    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    if-ge v0, v2, :cond_e

    .line 299
    const/4 v0, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v5, v0

    .line 310
    :cond_e
    const/4 v0, 0x0

    :goto_6
    array-length v2, v5

    if-lt v0, v2, :cond_f

    .line 317
    const/4 v0, 0x0

    aget-boolean v2, v5, v0

    const/4 v0, 0x1

    aget-boolean v3, v5, v0

    const/4 v0, 0x2

    aget-boolean v4, v5, v0

    const/4 v0, 0x3

    aget-boolean v5, v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/vita3k/emulator/overlay/InputOverlay;->setDpadState(Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;ZZZZ)V

    move v0, v7

    .line 319
    goto/16 :goto_4

    .line 312
    :cond_f
    aget-boolean v2, v5, v0

    if-eqz v2, :cond_10

    .line 314
    sget-object v2, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v1, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getControl(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 310
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 323
    :pswitch_6
    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getTrackId()I

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 325
    const/4 v0, 0x1

    .line 326
    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x4

    if-lt v2, v3, :cond_11

    .line 331
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setTrackId(I)V

    goto/16 :goto_4

    .line 328
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setState(I)V

    .line 329
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    invoke-virtual {v1, v2}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getControl(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 337
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    .line 339
    invoke-virtual {v0, p2}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->TrackEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 341
    const/4 v1, 0x1

    .line 347
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getXControl()I

    move-result v3

    .line 348
    if-nez v3, :cond_16

    .line 351
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 352
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 353
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 354
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 356
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fd7ae147ae147aeL    # 0.37

    cmpl-double v3, v4, v6

    if-lez v3, :cond_13

    .line 357
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getX()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_14

    .line 358
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 359
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0x9

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 367
    :cond_13
    :goto_8
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fd7ae147ae147aeL    # 0.37

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4

    .line 368
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getY()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_15

    .line 369
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 370
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Laenu/aps3e/Emulator;->key_event(IZ)V

    goto/16 :goto_5

    .line 362
    :cond_14
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 363
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xb

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    goto :goto_8

    .line 372
    :cond_15
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 373
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Laenu/aps3e/Emulator;->key_event(IZ)V

    goto/16 :goto_5

    .line 377
    :cond_16
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 378
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 379
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 380
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 381
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 383
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fd7ae147ae147aeL    # 0.37

    cmpl-double v3, v4, v6

    if-lez v3, :cond_17

    .line 384
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getX()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_18

    .line 385
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 386
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xd

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 393
    :cond_17
    :goto_9
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x3fd7ae147ae147aeL    # 0.37

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4

    .line 394
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getY()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_19

    .line 395
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 396
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v3, 0xe

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Laenu/aps3e/Emulator;->key_event(IZ)V

    goto/16 :goto_5

    .line 388
    :cond_18
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 389
    sget-object v3, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v4, 0xf

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Laenu/aps3e/Emulator;->key_event(IZ)V

    goto :goto_9

    .line 398
    :cond_19
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Laenu/aps3e/Emulator;->key_event(IZ)V

    .line 399
    sget-object v0, Laenu/aps3e/Emulator;->get:Laenu/aps3e/Emulator;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Laenu/aps3e/Emulator;->key_event(IZ)V

    goto/16 :goto_5

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 274
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onTouchWhileEditing(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v3, v1

    .line 416
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v4, v0

    .line 418
    const-string v5, ""

    .line 422
    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 464
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayDpads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 504
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayJoysticks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v2, v1

    .line 540
    :goto_3
    return v2

    .line 424
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 432
    :pswitch_1
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    if-nez v7, :cond_0

    .line 433
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 435
    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    .line 436
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    invoke-virtual {v0, p1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->onConfigureTouch(Landroid/view/MotionEvent;)V

    move v1, v2

    .line 439
    goto :goto_0

    .line 441
    :pswitch_2
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    invoke-virtual {v0, p1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->onConfigureTouch(Landroid/view/MotionEvent;)V

    .line 444
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->invalidate()V

    goto :goto_3

    .line 451
    :pswitch_3
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    if-ne v7, v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getLegacyId()I

    move-result v0

    .line 455
    iget-object v1, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 456
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    invoke-virtual {v7}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 454
    invoke-direct {p0, v0, v1, v7, v5}, Lorg/vita3k/emulator/overlay/InputOverlay;->saveControlPosition(IIILjava/lang/String;)V

    .line 457
    iput-object v8, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    move v1, v2

    .line 458
    goto :goto_0

    .line 464
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    .line 472
    :pswitch_5
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mButtonBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;

    if-nez v7, :cond_1

    .line 473
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 475
    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    .line 476
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    invoke-virtual {v0, p1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->onConfigureTouch(Landroid/view/MotionEvent;)V

    move v1, v2

    .line 479
    goto/16 :goto_1

    .line 481
    :pswitch_6
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    invoke-virtual {v0, p1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->onConfigureTouch(Landroid/view/MotionEvent;)V

    .line 484
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->invalidate()V

    goto/16 :goto_3

    .line 491
    :pswitch_7
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    if-ne v7, v0, :cond_1

    .line 494
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getLegacyId()I

    move-result v0

    .line 495
    iget-object v1, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    invoke-virtual {v7}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 494
    invoke-direct {p0, v0, v1, v7, v5}, Lorg/vita3k/emulator/overlay/InputOverlay;->saveControlPosition(IIILjava/lang/String;)V

    .line 497
    iput-object v8, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mDpadBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;

    move v1, v2

    .line 498
    goto/16 :goto_1

    .line 504
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    .line 506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_2

    :pswitch_8
    goto/16 :goto_2

    .line 510
    :pswitch_9
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    if-nez v7, :cond_2

    .line 511
    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 513
    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    .line 514
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    invoke-virtual {v0, p1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->onConfigureTouch(Landroid/view/MotionEvent;)V

    move v1, v2

    .line 517
    goto/16 :goto_2

    .line 519
    :pswitch_a
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    invoke-virtual {v0, p1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->onConfigureTouch(Landroid/view/MotionEvent;)V

    .line 522
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->invalidate()V

    move v1, v2

    .line 525
    goto/16 :goto_2

    .line 528
    :pswitch_b
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    invoke-virtual {v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getLegacyId()I

    move-result v0

    .line 531
    iget-object v1, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    invoke-virtual {v1}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 532
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    invoke-virtual {v7}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 530
    invoke-direct {p0, v0, v1, v7, v5}, Lorg/vita3k/emulator/overlay/InputOverlay;->saveControlPosition(IIILjava/lang/String;)V

    .line 533
    iput-object v8, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mJoystickBeingConfigured:Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;

    move v1, v2

    .line 534
    goto/16 :goto_2

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 467
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch

    .line 506
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public refreshControls()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayButtons:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 660
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayDpads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 661
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->overlayJoysticks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 663
    const-string v0, ""

    .line 664
    invoke-direct {p0, v0}, Lorg/vita3k/emulator/overlay/InputOverlay;->addVitaOverlayControls(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->invalidate()V

    .line 667
    return-void
.end method

.method public resetButtonPlacement()V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->vitaDefaultOverlay()V

    .line 672
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->refreshControls()V

    .line 673
    return-void
.end method

.method public setIsInEditMode(Z)V
    .locals 0

    .prologue
    .line 928
    iput-boolean p1, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mIsInEditMode:Z

    .line 929
    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    .prologue
    .line 683
    sget v0, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalOpacity:I

    if-eq p1, v0, :cond_0

    .line 684
    sput p1, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalOpacity:I

    .line 685
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->refreshControls()V

    .line 687
    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 1

    .prologue
    .line 676
    sget v0, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 677
    sput p1, Lorg/vita3k/emulator/overlay/InputOverlay;->mGlobalScale:F

    .line 678
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->refreshControls()V

    .line 680
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    .line 160
    if-eq v1, p1, :cond_0

    .line 162
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->invalidate()V

    .line 165
    :cond_0
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->resetHideTimer()V

    .line 167
    if-eqz p1, :cond_1

    move v0, v1

    .line 168
    :goto_0
    if-ne v0, v1, :cond_2

    .line 178
    :goto_1
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->invalidate()V

    goto :goto_1
.end method

.method public setSurfacePosition(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mSurfacePosition:Landroid/graphics/Rect;

    .line 183
    return-void
.end method

.method public tick()V
    .locals 4

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mShowingOverlay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 152
    iget-wide v2, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mlastTouchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlay;->mShowingOverlay:Z

    .line 154
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlay;->invalidate()V

    goto :goto_0
.end method
