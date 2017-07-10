.class Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;
.super Ljava/lang/Object;
.source "ChatSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

.field final synthetic val$maskValues:[Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;[ZI)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    .prologue
    .line 318
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->val$maskValues:[Z

    iput p3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1100(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 323
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->visibleDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_27

    .line 328
    :cond_15
    :goto_15
    const/4 v2, 0x0

    .line 329
    .local v2, "newMask":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_17
    const/4 v3, 0x6

    if-ge v0, v3, :cond_4c

    .line 330
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->val$maskValues:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_24

    .line 331
    if-nez v0, :cond_2e

    .line 332
    or-int/lit8 v2, v2, 0x1

    .line 329
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 325
    .end local v0    # "a":I
    .end local v2    # "newMask":I
    :catch_27
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 333
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v2    # "newMask":I
    :cond_2e
    const/4 v3, 0x1

    if-ne v0, v3, :cond_34

    .line 334
    or-int/lit8 v2, v2, 0x2

    goto :goto_24

    .line 335
    :cond_34
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3a

    .line 336
    or-int/lit8 v2, v2, 0x4

    goto :goto_24

    .line 337
    :cond_3a
    const/4 v3, 0x3

    if-ne v0, v3, :cond_40

    .line 338
    or-int/lit8 v2, v2, 0x8

    goto :goto_24

    .line 339
    :cond_40
    const/4 v3, 0x4

    if-ne v0, v3, :cond_46

    .line 340
    or-int/lit8 v2, v2, 0x10

    goto :goto_24

    .line 341
    :cond_46
    const/4 v3, 0x5

    if-ne v0, v3, :cond_24

    .line 342
    or-int/lit8 v2, v2, 0x20

    goto :goto_24

    .line 346
    :cond_4c
    iget v3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->val$position:I

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->mobileDownloadRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$400(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v4

    if-ne v3, v4, :cond_79

    .line 347
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->setMobileDataDownloadMask(IJ)V

    .line 351
    :cond_63
    :goto_63
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$800(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_78

    .line 352
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listAdapter:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$800(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 354
    :cond_78
    return-void

    .line 348
    :cond_79
    iget v3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->val$position:I

    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->wifiDownloadRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$500(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)I

    move-result v4

    if-ne v3, v4, :cond_63

    .line 349
    iget-object v3, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$5;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v3}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->setWifiDownloadMask(IJ)V

    goto :goto_63
.end method
