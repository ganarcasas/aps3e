.class public Laenu/aps3e/KeyMapActivity;
.super Landroid/app/Activity;
.source "KeyMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laenu/aps3e/KeyMapActivity$KeyListAdapter;
    }
.end annotation


# instance fields
.field private final click_l:Landroid/widget/AdapterView$OnItemClickListener;

.field lv:Landroid/widget/ListView;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Laenu/aps3e/KeyMapActivity$1;

    invoke-direct {v0, p0}, Laenu/aps3e/KeyMapActivity$1;-><init>(Laenu/aps3e/KeyMapActivity;)V

    iput-object v0, p0, Laenu/aps3e/KeyMapActivity;->click_l:Landroid/widget/AdapterView$OnItemClickListener;

    .line 33
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 116
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method get_all_key_mapper_values()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 69
    sget-object v0, Laenu/aps3e/KeyMapConfig;->KEY_NAMEIDS:[I

    array-length v0, v0

    new-array v3, v0, [I

    move v0, v1

    .line 70
    :goto_0
    sget-object v4, Laenu/aps3e/KeyMapConfig;->KEY_NAMEIDS:[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 74
    return-object v3

    .line 71
    :cond_0
    sget-object v4, Laenu/aps3e/KeyMapConfig;->KEY_NAMEIDS:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Laenu/aps3e/KeyMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Laenu/aps3e/KeyMapActivity;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Laenu/aps3e/KeyMapActivity;->sp:Landroid/content/SharedPreferences;

    .line 41
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laenu/aps3e/KeyMapActivity;->lv:Landroid/widget/ListView;

    .line 42
    iget-object v0, p0, Laenu/aps3e/KeyMapActivity;->lv:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Laenu/aps3e/KeyMapActivity;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-virtual {p0}, Laenu/aps3e/KeyMapActivity;->update_config()V

    .line 44
    iget-object v0, p0, Laenu/aps3e/KeyMapActivity;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Laenu/aps3e/KeyMapActivity;->click_l:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    invoke-virtual {p0}, Laenu/aps3e/KeyMapActivity;->refresh_view()V

    .line 46
    return-void
.end method

.method refresh_view()V
    .locals 5

    .prologue
    .line 49
    iget-object v0, p0, Laenu/aps3e/KeyMapActivity;->lv:Landroid/widget/ListView;

    new-instance v1, Laenu/aps3e/KeyMapActivity$KeyListAdapter;

    sget-object v2, Laenu/aps3e/KeyMapConfig;->KEY_NAMEIDS:[I

    invoke-virtual {p0}, Laenu/aps3e/KeyMapActivity;->get_all_key_mapper_values()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Laenu/aps3e/KeyMapActivity$KeyListAdapter;-><init>(Landroid/content/Context;[I[ILaenu/aps3e/KeyMapActivity$KeyListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    return-void
.end method

.method update_config()V
    .locals 5

    .prologue
    .line 53
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 56
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Laenu/aps3e/KeyMapConfig;->KEY_NAMEIDS:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 63
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    return-void

    .line 57
    :cond_0
    sget-object v3, Laenu/aps3e/KeyMapConfig;->KEY_NAMEIDS:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Laenu/aps3e/KeyMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    sget-object v4, Laenu/aps3e/KeyMapConfig;->DEFAULT_KEYMAPPERS:[I

    aget v4, v4, v0

    .line 59
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 60
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
