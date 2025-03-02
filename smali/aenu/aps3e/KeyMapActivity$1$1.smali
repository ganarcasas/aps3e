.class Laenu/aps3e/KeyMapActivity$1$1;
.super Ljava/lang/Object;
.source "KeyMapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laenu/aps3e/KeyMapActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laenu/aps3e/KeyMapActivity$1;

.field private final synthetic val$l:Landroid/widget/AdapterView;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Laenu/aps3e/KeyMapActivity$1;Landroid/widget/AdapterView;I)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Laenu/aps3e/KeyMapActivity$1$1;->this$1:Laenu/aps3e/KeyMapActivity$1;

    iput-object p2, p0, Laenu/aps3e/KeyMapActivity$1$1;->val$l:Landroid/widget/AdapterView;

    iput p3, p0, Laenu/aps3e/KeyMapActivity$1$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Laenu/aps3e/KeyMapActivity$1$1;->this$1:Laenu/aps3e/KeyMapActivity$1;

    invoke-static {v0}, Laenu/aps3e/KeyMapActivity$1;->access$0(Laenu/aps3e/KeyMapActivity$1;)Laenu/aps3e/KeyMapActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 89
    iget-object v0, p0, Laenu/aps3e/KeyMapActivity$1$1;->val$l:Landroid/widget/AdapterView;

    iget v2, p0, Laenu/aps3e/KeyMapActivity$1$1;->val$position:I

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    iget-object v0, p0, Laenu/aps3e/KeyMapActivity$1$1;->this$1:Laenu/aps3e/KeyMapActivity$1;

    invoke-static {v0}, Laenu/aps3e/KeyMapActivity$1;->access$0(Laenu/aps3e/KeyMapActivity$1;)Laenu/aps3e/KeyMapActivity;

    move-result-object v0

    invoke-virtual {v0}, Laenu/aps3e/KeyMapActivity;->refresh_view()V

    .line 92
    return-void
.end method
