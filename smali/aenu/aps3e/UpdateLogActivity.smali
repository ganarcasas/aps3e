.class public Laenu/aps3e/UpdateLogActivity;
.super Landroid/app/Activity;
.source "UpdateLogActivity.java"


# static fields
.field static log:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "\n0.1(2025-01-06)\n *\u9996\u4e2a\u7248\u672c\n0.2(2025-01-13)\n *\u4fee\u6b63socket\u65e0\u6cd5\u521b\u5efa\u7684bug\n *\u6dfb\u52a0\u66f4\u65b0\u65e5\u5fd7\n *\u65b0\u7684\u7528\u6237\u754c\u9762\n *\u4fee\u6b63\u4e86\u4e00\u4e2aiso\u5b89\u88c5\u7684bug\n *\u4fee\u6b63\u4e86cpu\u67b6\u6784\u68c0\u6d4b\u9519\u8bef\u7684bug\n *\u6dfb\u52a0.nomedia\u7981\u6b62\u5a92\u4f53\u5b58\u50a8\u626b\u63cf\n0.3(2025-01-14)\n *\u6e38\u620f\u754c\u9762\u8bbe\u7f6e\u4e3a\u5168\u5c4f\n *\u65e5\u5fd7\u884c\u4e3a\u4fee\u6539\n *\u521d\u6b65\u5b8c\u5584\u865a\u62df\u952e\u76d8\n *\u79fb\u9664sharedUserId\u5c5e\u6027\u7528\u4e8e\u517c\u5bb9\u5b89\u535313+\n *\u4fee\u6b63\u4e86\u538b\u7f29\u7eb9\u7406\u5361\u6b7b\u7684bug(\u76ee\u524d\u7eb9\u7406\u6548\u679c\u5f88\u7cca\ud83d\ude02)\n *\u865a\u62df\u952e\u76d8\u589e\u52a0L2,L3,R2,R3\n0.4(2025-01-17)\n *\u4fee\u6b63\u4e86\u7edf\u4e00\u7f13\u51b2\u533a\u66f4\u65b0\u5361\u6b7b\u7684BUG(\u4e0d\u4f1a\u5361\u6b7b\u4e86\uff0c\u4f46\u5b8c\u5168\u4fee\u6b63\u9700\u8981\u5927\u6539\ud83d\ude2d)\n *\u4fee\u6b63\u4e86\u591a\u7ebf\u7a0b\u6309\u952e\u8d44\u6e90\u8bbf\u95ee\u51b2\u7a81\u5bfc\u81f4\u7684\u95ea\u9000\n *\u89e3\u51b3\u4e86\u5361\u5956\u676f\u7684\u95ee\u9898\n *BC\u7eb9\u7406\u683c\u5f0f\u652f\u6301\n *\u865a\u62df\u952e\u76d8\u4f4d\u7f6e\u8c03\u6574\n *\u52a0\u5165\u4e86\u56fe\u6807(Icons/ui/*)\n *\u6e38\u620f\u51c6\u5907\u9636\u6bb5\u6d88\u606f\u53d8\u66f4\n0.5(2025-02-19)\n *\u53f3\u6447\u6746\u63a7\u5236\u4fee\u590d\n *\u7ad9\u70b9\u642d\u5efa\u5b8c\u6210\uff0c\u6b22\u8fce\u8bbf\u95ee\ud83d\ude04\n *\u652f\u6301pkg\u683c\u5f0f\u5b89\u88c5\n *\u521d\u6b65\u7684\u82f1\u8bed\u672c\u5730\u5316\u652f\u6301\n *\u542f\u52a8\u5931\u8d25\u663e\u793a\u9519\u8bef\u4fe1\u606f(\u76ee\u524d\u6548\u679c\u5f88\u70c2)\n *PS\u952e\u8ffd\u52a0\n0.6(2025-02-23)\n *LR\u952e\u4f4d\u4fee\u6b63\n *\u52a0\u5165\u6309\u952e\u6620\u5c04(\u76ee\u524d\u8fd8\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528)\n *\u52a0\u5165\u865a\u62df\u952e\u76d8\u4e00\u5b9a\u65f6\u957f\u81ea\u52a8\u9690\u85cf\n *\u52a0\u5165\u9e23\u8c22\u5217\u8868\n *\u52a0\u5165\u865a\u62df\u952e\u76d8\u7f16\u8f91\n *\u65b0\u7684\u56fe\u6807\uff0c\u7531Ruban\u63d0\u4f9b\n0.7\n *\u542f\u7528\u7740\u8272\u5668\u7f13\u5b58\n \n"

    sput-object v0, Laenu/aps3e/UpdateLogActivity;->log:Ljava/lang/String;

    .line 50
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

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    sget-object v1, Laenu/aps3e/UpdateLogActivity;->log:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 59
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 61
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0, v1}, Laenu/aps3e/UpdateLogActivity;->setContentView(Landroid/view/View;)V

    .line 64
    return-void
.end method
