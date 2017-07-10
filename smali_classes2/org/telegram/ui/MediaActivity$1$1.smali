.class Lorg/telegram/ui/MediaActivity$1$1;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity$1;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/MediaActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/MediaActivity$1;

    .prologue
    .line 303
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 306
    new-instance v9, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/MediaActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    .local v9, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v0, "AppName"

    const v1, 0x7f070092

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 308
    packed-switch p2, :pswitch_data_fc

    .line 319
    :goto_1f
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_20
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    array-length v0, v0

    if-ge v8, v0, :cond_c7

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aput-object v7, v0, v8

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/MediaActivity$SharedMediaData;

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {v1, v3, v7}, Lorg/telegram/ui/MediaActivity$SharedMediaData;-><init>(Lorg/telegram/ui/MediaActivity;Lorg/telegram/ui/MediaActivity$1;)V

    aput-object v1, v0, v8

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v4

    long-to-int v0, v4

    if-nez v0, :cond_c3

    const/high16 v0, -0x80000000

    :goto_63
    aput v0, v1, v2

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1200(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_a3

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->max_id:[I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$200(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->migrated_from_max_id:I

    aput v1, v0, v6

    .line 325
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v8

    # getter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->endReached:[Z
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$300(Lorg/telegram/ui/MediaActivity$SharedMediaData;)[Z

    move-result-object v0

    aput-boolean v2, v0, v6

    .line 319
    :cond_a3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_20

    .line 310
    .end local v8    # "a":I
    :pswitch_a7
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # setter for: Lorg/telegram/ui/MediaActivity;->filterType:I
    invoke-static {v0, v2}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    goto/16 :goto_1f

    .line 313
    :pswitch_b0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # setter for: Lorg/telegram/ui/MediaActivity;->filterType:I
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    goto/16 :goto_1f

    .line 316
    :pswitch_b9
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v1, 0x2

    # setter for: Lorg/telegram/ui/MediaActivity;->filterType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/MediaActivity;->access$1002(Lorg/telegram/ui/MediaActivity;I)I

    goto/16 :goto_1f

    .line 322
    .restart local v8    # "a":I
    :cond_c3
    const v0, 0x7fffffff

    goto :goto_63

    .line 328
    :cond_c7
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->sharedMediaData:[Lorg/telegram/ui/MediaActivity$SharedMediaData;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)[Lorg/telegram/ui/MediaActivity$SharedMediaData;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    aget-object v0, v0, v1

    # setter for: Lorg/telegram/ui/MediaActivity$SharedMediaData;->loading:Z
    invoke-static {v0, v6}, Lorg/telegram/ui/MediaActivity$SharedMediaData;->access$402(Lorg/telegram/ui/MediaActivity$SharedMediaData;Z)Z

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$000(Lorg/telegram/ui/MediaActivity;)J

    move-result-wide v0

    const/16 v3, 0x32

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$1300(Lorg/telegram/ui/MediaActivity;)I

    move-result v5

    iget-object v4, p0, Lorg/telegram/ui/MediaActivity$1$1;->this$1:Lorg/telegram/ui/MediaActivity$1;

    iget-object v4, v4, Lorg/telegram/ui/MediaActivity$1;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->classGuid:I
    invoke-static {v4}, Lorg/telegram/ui/MediaActivity;->access$1400(Lorg/telegram/ui/MediaActivity;)I

    move-result v7

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    .line 330
    return-void

    .line 308
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_b0
        :pswitch_b9
    .end packed-switch
.end method
