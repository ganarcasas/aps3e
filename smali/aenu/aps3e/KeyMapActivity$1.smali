.class Laenu/aps3e/KeyMapActivity$1;
.super Ljava/lang/Object;
.source "KeyMapActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laenu/aps3e/KeyMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laenu/aps3e/KeyMapActivity;


# direct methods
.method constructor <init>(Laenu/aps3e/KeyMapActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Laenu/aps3e/KeyMapActivity$1;->this$0:Laenu/aps3e/KeyMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Laenu/aps3e/KeyMapActivity$1;)Laenu/aps3e/KeyMapActivity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Laenu/aps3e/KeyMapActivity$1;->this$0:Laenu/aps3e/KeyMapActivity;

    return-object v0
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
    .line 81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laenu/aps3e/KeyMapActivity$1;->this$0:Laenu/aps3e/KeyMapActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    const-string v1, "\u6309\u4efb\u610f\u952e\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 83
    const-string v1, "\u6e05\u9664"

    new-instance v2, Laenu/aps3e/KeyMapActivity$1$1;

    invoke-direct {v2, p0, p1, p3}, Laenu/aps3e/KeyMapActivity$1$1;-><init>(Laenu/aps3e/KeyMapActivity$1;Landroid/widget/AdapterView;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v1, Laenu/aps3e/KeyMapActivity$1$2;

    invoke-direct {v1, p0, p1, p3}, Laenu/aps3e/KeyMapActivity$1$2;-><init>(Laenu/aps3e/KeyMapActivity$1;Landroid/widget/AdapterView;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 112
    return-void
.end method
