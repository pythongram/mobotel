.class Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rey/material/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/rey/material/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rey/material/widget/ListPopupWindow;Lcom/rey/material/widget/ListPopupWindow$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/rey/material/widget/ListPopupWindow;
    .param p2, "x1"    # Lcom/rey/material/widget/ListPopupWindow$1;

    .prologue
    .line 1744
    invoke-direct {p0, p1}, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lcom/rey/material/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1749
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->show()V

    .line 1751
    :cond_d
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->dismiss()V

    .line 1756
    return-void
.end method
