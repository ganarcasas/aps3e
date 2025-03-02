.class public final Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;
.super Ljava/lang/Object;
.source "InputOverlayDrawableDpad.java"


# static fields
.field public static final STATE_DEFAULT:I = 0x0

.field public static final STATE_PRESSED_DOWN:I = 0x2

.field public static final STATE_PRESSED_DOWN_LEFT:I = 0x7

.field public static final STATE_PRESSED_DOWN_RIGHT:I = 0x8

.field public static final STATE_PRESSED_LEFT:I = 0x3

.field public static final STATE_PRESSED_RIGHT:I = 0x4

.field public static final STATE_PRESSED_UP:I = 0x1

.field public static final STATE_PRESSED_UP_LEFT:I = 0x5

.field public static final STATE_PRESSED_UP_RIGHT:I = 0x6


# instance fields
.field private mControlPositionX:I

.field private mControlPositionY:I

.field private mControls:[I

.field private mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mHeight:I

.field private mLegacyId:I

.field private mPressState:I

.field private mPressedOneDirectionStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mPressedTwoDirectionsStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

.field private mPreviousTouchX:I

.field private mPreviousTouchY:I

.field private mTrackId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControls:[I

    .line 32
    iput v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressState:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mTrackId:I

    .line 62
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 63
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedOneDirectionStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 64
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedTwoDirectionsStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mWidth:I

    .line 67
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mHeight:I

    .line 69
    iput p5, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mLegacyId:I

    .line 70
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControls:[I

    aput p6, v0, v1

    .line 71
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControls:[I

    const/4 v1, 0x1

    aput p7, v0, v1

    .line 72
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControls:[I

    const/4 v1, 0x2

    aput p8, v0, v1

    .line 73
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControls:[I

    const/4 v1, 0x3

    aput p9, v0, v1

    .line 74
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 78
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionX:I

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 79
    iget v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionY:I

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 80
    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressState:I

    packed-switch v2, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedOneDirectionStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 91
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedOneDirectionStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 95
    :pswitch_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v4, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 97
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedOneDirectionStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 101
    :pswitch_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v5, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 103
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedOneDirectionStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 107
    :pswitch_5
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedTwoDirectionsStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 110
    :pswitch_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 112
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedTwoDirectionsStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 116
    :pswitch_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 117
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v4, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 118
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedTwoDirectionsStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 122
    :pswitch_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v5, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 124
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedTwoDirectionsStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getControl(I)I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControls:[I

    aget v0, v0, p1

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mHeight:I

    return v0
.end method

.method public getLegacyId()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mLegacyId:I

    return v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mTrackId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mWidth:I

    return v0
.end method

.method public onConfigureTouch(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    return-void

    .line 158
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPreviousTouchX:I

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPreviousTouchY:I

    goto :goto_0

    .line 162
    :pswitch_2
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPreviousTouchX:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionX:I

    .line 163
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPreviousTouchY:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionY:I

    .line 164
    iget v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionX:I

    iget v1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionY:I

    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getWidth()I

    move-result v2

    iget v3, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionX:I

    add-int/2addr v2, v3

    .line 165
    invoke-virtual {p0}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->getHeight()I

    move-result v3

    iget v4, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionY:I

    add-int/2addr v3, v4

    .line 164
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->setBounds(IIII)V

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPreviousTouchX:I

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPreviousTouchY:I

    goto :goto_0

    .line 155
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
    .line 180
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 181
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedOneDirectionStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 182
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedTwoDirectionsStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 183
    return-void
.end method

.method public setOpacity(I)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mDefaultStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 188
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedOneDirectionStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 189
    iget-object v0, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressedTwoDirectionsStateBitmap:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 190
    return-void
.end method

.method public setPosition(II)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionX:I

    .line 175
    iput p2, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mControlPositionY:I

    .line 176
    return-void
.end method

.method public setState(I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mPressState:I

    .line 210
    return-void
.end method

.method public setTrackId(I)V
    .locals 0

    .prologue
    .line 145
    iput p1, p0, Lorg/vita3k/emulator/overlay/InputOverlayDrawableDpad;->mTrackId:I

    .line 146
    return-void
.end method
