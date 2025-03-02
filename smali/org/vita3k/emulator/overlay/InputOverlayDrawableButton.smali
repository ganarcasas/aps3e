.class public final Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;
.super Ljava/lang/Object;
.source "InputOverlayDrawableButton.java"


# instance fields
.field private mControl:I

.field private mControlPositionX:I

.field private mControlPositionY:I

.field private mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mHeight:I

.field private mLegacyId:I

.field private mPressedState:Z

.field private mPressedStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mPreviousTouchX:I

.field private mPreviousTouchY:I

.field private mRole:I

.field private mTrackId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedState:Z

    .line 32
    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mRole:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mTrackId:I

    .line 47
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 48
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    iput p4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mLegacyId:I

    .line 50
    iput p5, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControl:I

    .line 52
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mWidth:I

    .line 53
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mHeight:I

    .line 55
    iput p6, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mRole:I

    .line 56
    return-void
.end method

.method private getCurrentStateBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getCurrentStateBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getControl()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControl:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mHeight:I

    return v0
.end method

.method public getLegacyId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mLegacyId:I

    return v0
.end method

.method public getPressed()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedState:Z

    return v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mRole:I

    return v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mTrackId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mWidth:I

    return v0
.end method

.method public onConfigureTouch(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-void

    .line 90
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPreviousTouchX:I

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPreviousTouchY:I

    goto :goto_0

    .line 94
    :pswitch_2
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPreviousTouchX:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionX:I

    .line 95
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPreviousTouchY:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionY:I

    .line 96
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionX:I

    iget v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionY:I

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getWidth()I

    move-result v2

    iget v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionX:I

    add-int/2addr v2, v3

    .line 97
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->getHeight()I

    move-result v3

    iget v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionY:I

    add-int/2addr v3, v4

    .line 96
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->setBounds(IIII)V

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPreviousTouchX:I

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPreviousTouchY:I

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 123
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 124
    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 129
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 130
    return-void
.end method

.method public setPosition(II)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionX:I

    .line 107
    iput p2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mControlPositionY:I

    .line 108
    return-void
.end method

.method public setPressedState(Z)V
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mRole:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedState:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedState:Z

    .line 155
    :cond_0
    :goto_1
    return-void

    .line 151
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    iput-boolean p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mPressedState:Z

    goto :goto_1
.end method

.method public setTrackId(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableButton;->mTrackId:I

    .line 74
    return-void
.end method
