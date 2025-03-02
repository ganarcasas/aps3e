.class Laenu/aps3e/KeyMapActivity$KeyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/KeyMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyListAdapter"
.end annotation


# instance fields
.field private context_:Landroid/content/Context;

.field private keyNameIdList_:[I

.field private valueList_:[I


# direct methods
.method private constructor <init>(Landroid/content/Context;[I[I)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 126
    iput-object p1, p0, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->context_:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->keyNameIdList_:[I

    .line 128
    iput-object p3, p0, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->valueList_:[I

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[I[ILaenu/aps3e/KeyMapActivity$KeyListAdapter;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Laenu/aps3e/KeyMapActivity$KeyListAdapter;-><init>(Landroid/content/Context;[I[I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->keyNameIdList_:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 147
    int-to-long v0, p1

    return-wide v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->context_:Landroid/content/Context;

    iget-object v1, p0, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->keyNameIdList_:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->context_:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v0, v1

    .line 158
    check-cast v0, Landroid/widget/TextView;

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->getKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laenu/aps3e/KeyMapActivity$KeyListAdapter;->valueList_:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
