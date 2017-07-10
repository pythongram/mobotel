.class Lco/ronash/pushe/task/scheduler/a/a;
.super Lcom/evernote/android/job/Job;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/evernote/android/job/Job;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/task/scheduler/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->b(Ljava/lang/String;)Lco/ronash/pushe/task/c;

    move-result-object v0

    sget-object v1, Lco/ronash/pushe/task/scheduler/a/b;->a:[I

    invoke-virtual {v0}, Lco/ronash/pushe/task/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_34

    sget-object v0, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    :goto_29
    return-object v0

    :pswitch_2a
    sget-object v0, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    goto :goto_29

    :pswitch_2d
    sget-object v0, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    goto :goto_29

    :pswitch_30
    sget-object v0, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;

    goto :goto_29

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method
