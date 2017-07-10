.class Lorg/telegram/ui/Components/ChatActivityEnterView$16;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 1136
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1139
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "text":Ljava/lang/String;
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1141
    .local v0, "idx":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_27

    .line 1142
    :cond_1f
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 1146
    :goto_26
    return-void

    .line 1144
    :cond_27
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$16;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_26
.end method
