// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace Maxi.Citizenship.Models;

public partial class QuestionOption
{
    public int Id { get; set; }

    public DateTime CreatedOn { get; set; }

    public Guid CreatedBy { get; set; }

    public DateTime LastModifiedOn { get; set; }

    public Guid LastModifiedBy { get; set; }

    public short QuestionId { get; set; }

    public string AppName { get; set; }

    public virtual Question Question { get; set; }
}