using System.Drawing;
using Data.Model.Items;
using GameServer.Configuration;
using GameServer.Configuration.Poo;
using GameServer.Game;
using GameServer.Model.Parts.Body;
using GameServer.Model.Units;

namespace GameServer.Model.Parts
{
	/// <summary>
	/// Represents a generic part used in gameplay
	/// </summary>
	public abstract class PartBase
	{
		/// <summary>
		/// The id of this part
		/// </summary>
		public virtual int Id { get; private set; }

		/// <summary>
		/// The unit that owns this part
		/// </summary>
		public virtual Unit Owner { get; private set; }

		/// <summary>
		/// The game instance this part is in
		/// </summary>
		protected virtual GameInstance GameInstance { get { return Owner.GameInstance; } }
		
		/// <summary>
		/// The stats for this part
		/// </summary>
		public virtual StatsBase Stats { get; protected set; }

		/// <summary>
		/// The color of this part
		/// </summary>
		public virtual Color Color { get; protected set; }

		public virtual uint TemplateId { get { return Stats.TemplateId; } }
		
		protected PartBase(PartRecord partRecord, Unit owner)
		{
			// For null weapon
			if (partRecord == null) return;
			
			// Set the Id
			Id = partRecord.Id;

			// Load stats for part
			Stats = PooReader.GetStatsForPart(partRecord);
			
			// Set color
			Color = partRecord.Color;
			
			// Set owner
			Owner = owner;
			
			// TODO: Any other info we need
		}
	}
}