.class Laenu/aps3e/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laenu/aps3e/MainActivity;


# direct methods
.method constructor <init>(Laenu/aps3e/MainActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Laenu/aps3e/MainActivity$1;->this$0:Laenu/aps3e/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Laenu/aps3e/InstallFrimware;->done_f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Laenu/aps3e/MainActivity$1;->this$0:Laenu/aps3e/MainActivity;

    iget-object v1, p0, Laenu/aps3e/MainActivity$1;->this$0:Laenu/aps3e/MainActivity;

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Laenu/aps3e/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;

    invoke-virtual {v0, p3}, Laenu/aps3e/MainActivity$GameMetaInfoAdapter;->getMetaInfo(I)Laenu/aps3e/Emulator$MetaInfo;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v2, "aenu.intent.action.APS3E"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v2, p0, Laenu/aps3e/MainActivity$1;->this$0:Laenu/aps3e/MainActivity;

    invoke-virtual {v2}, Laenu/aps3e/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v2, "meta_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Laenu/aps3e/MainActivity$1;->this$0:Laenu/aps3e/MainActivity;

    invoke-virtual {v0, v1}, Laenu/aps3e/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
