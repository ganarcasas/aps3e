.class public Laenu/aps3e/GratitudeActivity;
.super Landroid/app/Activity;
.source "GratitudeActivity.java"


# static fields
.field static log:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "\nThanks to the following people who provided financial support for this project (sort by date):\n\u611f\u8c22\u4ee5\u4e0b\u4eba\u5458\u4e3a\u672c\u9879\u76ee\u63d0\u4f9b\u4e86\u8d44\u91d1\u652f\u6301(\u6309\u65e5\u671f\u6392\u5e8f):\n\n\n callmerabbitz\n collazof\n devyprasetyo33\n \u604d\u5982\u5f7c\u5cb8\n \u540c\u4eba\u5c0f\u8bf4\n \u7cd6\u03c9\u03c3\u5fc3\u306e\u7231\n \u4e0d\u8868\u6001\u4e0d\u7ecf\u624b\u4e0d\u53c2\u4e0e\n VM GAMEDROID\n brothason\n gamerpro\n geovanem5\n edjeffher33\n Chakiel Zero Android\n darwinpp12\n ziditakali\n geovanem5\n sarahi\n melkygt0\n elevas33\n \n\n Thanks Ruban for all the ICONS\n \n Thanks to reddit/discord for managing SRC267 (Sting)\n"

    sput-object v0, Laenu/aps3e/GratitudeActivity;->log:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v1, Laenu/aps3e/GratitudeActivity;->log:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 51
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0, v1}, Laenu/aps3e/GratitudeActivity;->setContentView(Landroid/view/View;)V

    .line 54
    return-void
.end method
