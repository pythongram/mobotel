.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->didPressedUrl(Lorg/telegram/messenger/MessageObject;Landroid/text/style/CharacterStyle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

.field final synthetic val$urlFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$2"    # Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    .prologue
    .line 10304
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->val$urlFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 10307
    if-nez p2, :cond_25

    .line 10308
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->val$urlFinal:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->inlineReturn:J
    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$17700(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_23

    :goto_1f
    invoke-static {v2, v3, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 10318
    :cond_22
    :goto_22
    return-void

    .line 10308
    :cond_23
    const/4 v1, 0x0

    goto :goto_1f

    .line 10309
    :cond_25
    if-ne p2, v1, :cond_22

    .line 10310
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->val$urlFinal:Ljava/lang/String;

    .line 10311
    .local v0, "url":Ljava/lang/String;
    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 10312
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 10316
    :cond_36
    :goto_36
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 10313
    :cond_3a
    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 10314
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method
