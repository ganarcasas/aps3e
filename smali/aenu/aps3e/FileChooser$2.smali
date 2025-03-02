.class Laenu/aps3e/FileChooser$2;
.super Ljava/lang/Object;
.source "FileChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/FileChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laenu/aps3e/FileChooser;


# direct methods
.method constructor <init>(Laenu/aps3e/FileChooser;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Laenu/aps3e/FileChooser$2;->this$0:Laenu/aps3e/FileChooser;

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
    .line 75
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Laenu/aps3e/FileChooser$FileAdapter;

    invoke-virtual {v0, p3}, Laenu/aps3e/FileChooser$FileAdapter;->getFile(I)Ljava/io/File;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    const-string v2, "path"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v0, p0, Laenu/aps3e/FileChooser$2;->this$0:Laenu/aps3e/FileChooser;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Laenu/aps3e/FileChooser;->setResult(ILandroid/content/Intent;)V

    .line 80
    iget-object v0, p0, Laenu/aps3e/FileChooser$2;->this$0:Laenu/aps3e/FileChooser;

    invoke-virtual {v0}, Laenu/aps3e/FileChooser;->finish()V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Laenu/aps3e/FileChooser$2;->this$0:Laenu/aps3e/FileChooser;

    invoke-static {v1, v0}, Laenu/aps3e/FileChooser;->access$1(Laenu/aps3e/FileChooser;Ljava/io/File;)V

    goto :goto_0
.end method
