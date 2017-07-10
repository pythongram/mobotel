.class Lorg/telegram/ui/Telehgram/CopyTextAlert$3;
.super Ljava/lang/Object;
.source "CopyTextAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/CopyTextAlert;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/CopyTextAlert;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/CopyTextAlert;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$3;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "min":I
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$3;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$300(Lorg/telegram/ui/Telehgram/CopyTextAlert;)Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 149
    .local v0, "max":I
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$3;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$300(Lorg/telegram/ui/Telehgram/CopyTextAlert;)Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 150
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$3;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$300(Lorg/telegram/ui/Telehgram/CopyTextAlert;)Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->getSelectionStart()I

    move-result v3

    .line 151
    .local v3, "selStart":I
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$3;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$300(Lorg/telegram/ui/Telehgram/CopyTextAlert;)Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->getSelectionEnd()I

    move-result v2

    .line 152
    .local v2, "selEnd":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 153
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 155
    .end local v2    # "selEnd":I
    .end local v3    # "selStart":I
    :cond_40
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$3;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    # getter for: Lorg/telegram/ui/Telehgram/CopyTextAlert;->textView:Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->access$300(Lorg/telegram/ui/Telehgram/CopyTextAlert;)Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 156
    .local v4, "selectedText":Ljava/lang/CharSequence;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->addToClipboard(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v5, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$3;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    invoke-virtual {v5}, Lorg/telegram/ui/Telehgram/CopyTextAlert;->dismiss()V

    .line 158
    return-void
.end method
