.class Laenu/proptest/HelloJni$2;
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

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Laenu/proptest/HelloJni;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Laenu/proptest/HelloJni$2;->this$0:Laenu/proptest/HelloJni;

    iput-object p2, p0, Laenu/proptest/HelloJni$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Laenu/proptest/HelloJni$2;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    iget-object v1, p0, Laenu/proptest/HelloJni$2;->this$0:Laenu/proptest/HelloJni;

    invoke-virtual {v1}, Laenu/proptest/HelloJni;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Laenu/proptest/HelloJni$2;->this$0:Laenu/proptest/HelloJni;

    invoke-virtual {v1, v0}, Laenu/proptest/HelloJni;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_0
    return-void
.end method
