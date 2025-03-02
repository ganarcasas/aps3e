.class Laenu/aps3e/FileChooser$1;
.super Ljava/lang/Object;
.source "FileChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 63
    iput-object p1, p0, Laenu/aps3e/FileChooser$1;->this$0:Laenu/aps3e/FileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Laenu/aps3e/FileChooser$1;->this$0:Laenu/aps3e/FileChooser;

    invoke-static {v0}, Laenu/aps3e/FileChooser;->access$0(Laenu/aps3e/FileChooser;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Laenu/aps3e/FileChooser$1;->this$0:Laenu/aps3e/FileChooser;

    invoke-static {v1, v0}, Laenu/aps3e/FileChooser;->access$1(Laenu/aps3e/FileChooser;Ljava/io/File;)V

    .line 69
    :cond_0
    return-void
.end method
