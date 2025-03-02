.class Laenu/proptest/HelloJni$1;
.super Landroid/text/style/ClickableSpan;
.source "HelloJni.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laenu/proptest/HelloJni;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laenu/proptest/HelloJni;


# direct methods
.method constructor <init>(Laenu/proptest/HelloJni;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Laenu/proptest/HelloJni$1;->this$0:Laenu/proptest/HelloJni;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 55
    const-string v0, "https://b23.tv/GvWfCmG"

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    iget-object v0, p0, Laenu/proptest/HelloJni$1;->this$0:Laenu/proptest/HelloJni;

    invoke-virtual {v0}, Laenu/proptest/HelloJni;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Laenu/proptest/HelloJni$1;->this$0:Laenu/proptest/HelloJni;

    invoke-virtual {v0, v1}, Laenu/proptest/HelloJni;->startActivity(Landroid/content/Intent;)V

    .line 61
    :cond_0
    return-void
.end method
