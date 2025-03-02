.class public final Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;
.super Ljava/lang/Object;
.source "InputOverlayDrawableJoystick.java"


# instance fields
.field private final mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mControlPositionX:I

.field private mControlPositionY:I

.field private mCurrentX:F

.field private mCurrentY:F

.field private final mDefaultStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private final mHeight:I

.field private final mJoystickLegacyId:I

.field private mJoystickX:F

.field private final mJoystickXControl:I

.field private mJoystickY:F

.field private final mJoystickYControl:I

.field private mOpacity:I

.field private mOrigBounds:Landroid/graphics/Rect;

.field private final mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mPressedState:Z

.field private final mPressedStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mPreviousTouchX:I

.field private mPreviousTouchY:I

.field private mVirtBounds:Landroid/graphics/Rect;

.field private final mWidth:I

.field private trackId:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentX:F

    .line 21
    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentY:F

    .line 22
    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickX:F

    .line 23
    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickY:F

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->trackId:I

    .line 39
    iput-boolean v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedState:Z

    .line 58
    iput p7, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickLegacyId:I

    .line 59
    iput p8, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickXControl:I

    .line 60
    iput p9, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickYControl:I

    .line 62
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 63
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mDefaultStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 64
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 65
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mWidth:I

    .line 67
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mHeight:I

    .line 69
    invoke-virtual {p0, p5}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->setBounds(Landroid/graphics/Rect;)V

    .line 70
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mDefaultStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 71
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 72
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mVirtBounds:Landroid/graphics/Rect;

    .line 73
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    .line 74
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 75
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 76
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->SetInnerBounds()V

    .line 77
    return-void
.end method

.method private SetInnerBounds()V
    .locals 11

    .prologue
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 220
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentX:F

    float-to-double v2, v0

    .line 221
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentY:F

    float-to-double v0, v0

    .line 223
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    add-double/2addr v4, v6

    add-double/2addr v4, v6

    .line 224
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 225
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 226
    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 228
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    .line 229
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    .line 230
    double-to-float v4, v0

    iput v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentY:F

    .line 231
    double-to-float v4, v2

    iput v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentX:F

    .line 234
    :cond_0
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-double v6, v5

    mul-double/2addr v6, v2

    double-to-int v5, v6

    add-int/2addr v4, v5

    .line 235
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    mul-double/2addr v6, v0

    double-to-int v6, v6

    add-int/2addr v5, v6

    .line 237
    iget-object v6, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 238
    iget-object v7, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 239
    iget-object v8, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mDefaultStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    sub-int v9, v4, v6

    sub-int v10, v5, v7

    add-int/2addr v4, v6

    .line 240
    add-int/2addr v5, v7

    .line 239
    invoke-virtual {v8, v9, v10, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 241
    iget-object v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mDefaultStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 245
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 246
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 247
    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    move-wide v0, v2

    move-wide v6, v4

    .line 252
    :goto_0
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v2, v6, v2

    if-gez v2, :cond_1

    .line 254
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentX:F

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickX:F

    .line 255
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentY:F

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickY:F

    .line 263
    :goto_1
    return-void

    .line 258
    :cond_1
    div-double/2addr v0, v6

    double-to-float v0, v0

    .line 259
    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 260
    iget v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentX:F

    mul-float/2addr v1, v0

    iput v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickX:F

    .line 261
    iget v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickY:F

    goto :goto_1

    :cond_2
    move-wide v0, v4

    move-wide v6, v2

    goto :goto_0
.end method

.method private getCurrentStateBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mDefaultStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method private getVirtBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mVirtBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method private setOrigBounds(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    .line 313
    return-void
.end method

.method private setVirtBounds(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mVirtBounds:Landroid/graphics/Rect;

    .line 308
    return-void
.end method


# virtual methods
.method public TrackEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 100
    const/4 v0, 0x5

    if-eq v3, v0, :cond_1

    .line 101
    const/4 v0, 0x6

    if-eq v3, v0, :cond_1

    move v0, v1

    .line 102
    :goto_0
    if-eqz v0, :cond_2

    move v0, v2

    .line 105
    :goto_1
    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v2

    .line 144
    :goto_2
    iget v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->trackId:I

    if-ne v3, v7, :cond_5

    .line 166
    :goto_3
    return v0

    :cond_1
    move v0, v2

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    goto :goto_1

    .line 109
    :pswitch_1
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    iput-boolean v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedState:Z

    .line 113
    iget-object v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 114
    iget-object v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOpacity:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 120
    iget-object v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->trackId:I

    move v0, v1

    .line 123
    goto :goto_2

    .line 126
    :pswitch_2
    iget v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->trackId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    if-ne v3, v0, :cond_0

    .line 129
    iput-boolean v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedState:Z

    .line 130
    iput v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentY:F

    iput v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentX:F

    .line 131
    iput v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickY:F

    iput v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickX:F

    .line 132
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    iget v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOpacity:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 133
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 135
    iget-object v6, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    invoke-direct {p0, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->setVirtBounds(Landroid/graphics/Rect;)V

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 137
    iget-object v6, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOrigBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 136
    invoke-virtual {p0, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->setBounds(Landroid/graphics/Rect;)V

    .line 138
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->SetInnerBounds()V

    .line 139
    iput v7, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->trackId:I

    move v0, v1

    goto/16 :goto_2

    .line 149
    :cond_3
    iget v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->trackId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 152
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 153
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 154
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    .line 155
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    .line 156
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v0, v6

    .line 157
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 158
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    .line 159
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getVirtBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v4, v6

    .line 160
    div-float/2addr v0, v5

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentX:F

    .line 161
    div-float v0, v3, v4

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mCurrentY:F

    .line 163
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->SetInnerBounds()V

    move v0, v1

    .line 147
    :cond_4
    add-int/lit8 v2, v2, 0x1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    goto/16 :goto_3

    .line 105
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
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->getCurrentStateBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mHeight:I

    return v0
.end method

.method public getLegacyId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickLegacyId:I

    return v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->trackId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mWidth:I

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickX:F

    return v0
.end method

.method public getXControl()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickXControl:I

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickY:F

    return v0
.end method

.method public getYControl()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mJoystickYControl:I

    return v0
.end method

.method public onConfigureTouch(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    :pswitch_0
    return-void

    .line 174
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPreviousTouchX:I

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPreviousTouchY:I

    goto :goto_0

    .line 178
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPreviousTouchX:I

    sub-int/2addr v0, v1

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPreviousTouchY:I

    sub-int/2addr v1, v2

    .line 180
    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionX:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionX:I

    .line 181
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionY:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionY:I

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionX:I

    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionY:I

    .line 183
    iget-object v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionX:I

    add-int/2addr v3, v4

    .line 184
    iget-object v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionY:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    invoke-virtual {p0, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionX:I

    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionY:I

    .line 186
    iget-object v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionX:I

    add-int/2addr v3, v4

    .line 187
    iget-object v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionY:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 185
    invoke-direct {p0, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->setVirtBounds(Landroid/graphics/Rect;)V

    .line 188
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->SetInnerBounds()V

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionX:I

    iget v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionY:I

    .line 190
    iget-object v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionX:I

    add-int/2addr v4, v5

    .line 191
    iget-object v5, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    iget v6, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionY:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 189
    invoke-direct {p0, v0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->setOrigBounds(Landroid/graphics/Rect;)V

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPreviousTouchX:I

    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPreviousTouchY:I

    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 279
    return-void
.end method

.method public setOpacity(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iput p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOpacity:I

    .line 285
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mDefaultStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 286
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mPressedStateInnerBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 288
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->trackId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 291
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mOuterBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 296
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mBoundsBoxBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 0

    .prologue
    .line 267
    iput p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionX:I

    .line 268
    iput p2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableJoystick;->mControlPositionY:I

    .line 269
    return-void
.end method
